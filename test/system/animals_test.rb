require 'application_system_test_case'

class AnimalsTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit '/'

    assert_selector 'h2', text: 'Animals available'
    assert_selector '.card-product', count: (Animal.count - Adoption.count)
    # save_and_open_screenshot
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

  test 'reading informations of a animal' do
    visit '/animals/1'
    # save_and_open_screenshot

    assert_selector 'h1', text: "Animal's Details"
  end

  test "updating a animal's information" do
    visit '/animals/1/edit'
    # save_and_open_screenshot
    fill_in 'Birth Date', with: '1900-01-01'
    # save_and_open_screenshot

    click_on 'Update'
    # save_and_open_screenshot

    assert_equal animal_path('bob'), page.current_path
    assert_text "Animal's Details"
    # save_and_open_screenshot
  end
end
