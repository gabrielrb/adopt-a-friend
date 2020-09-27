require 'application_system_test_case'

class AnimalsTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit '/'

    assert_selector 'h2', text: 'Animals'

  end
end
