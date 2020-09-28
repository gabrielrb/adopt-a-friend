require 'application_system_test_case'

class AnimalsTest < ApplicationSystemTestCase
  test 'visiting the index of animals' do
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
    select 'other', from: 'Category'
    # save_and_open_screenshot

    click_on 'Update'
    # save_and_open_screenshot

    assert_equal animal_path('bob'), page.current_path
    assert_text "Animal's Details"
    # save_and_open_screenshot
  end

  test 'creating a adoption' do
    visit '/animals/5'
    # save_and_open_screenshot

    fill_in 'New Owner', with: 'Aline'
    # save_and_open_screenshot

    click_on 'ADOPT!'
    # save_and_open_screenshot

    assert_equal animal_path(5), page.current_path
    assert_text "Animal's Details"
    # save_and_open_screenshot
  end

  test 'visiting the index of adoptions' do
    visit adoptions_path

    assert_selector 'h2', text: 'All Adoptions'
    assert_selector '.card-product', count: Adoption.count
    # save_and_open_screenshot
  end

# test 'delete a animal' do
  #   visit '/animals/4'
  #   # save_and_open_screenshot

  #   click_on 'Delete Animal'
  #   # save_and_open_screenshot

  #   assert_equal animals_path, page.current_path
  #   assert_text 'Animals available'
  #   # save_and_open_screenshot
  # end
end
