require 'application_system_test_case'

class AnimalsTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit '/'

    assert_selector 'h2', text: 'Animals available'
    assert_selector '.card-product', count: (Animal.count - Adoption.count)
  end

  test 'creating a new animal' do
    visit '/animals/new'
    # save_and_open_screenshot

    fill_in 'Name', with: 'max'
    select 'dog', from: 'Category'
    fill_in 'Birth Date', with: '2010-02-11'
    # save_and_open_screenshot

    click_on 'Add'
    # save_and_open_screenshot

    assert_equal animal_path('max'), page.current_path
    assert_text "Animal's Details"
    # save_and_open_screenshot
  end
end
