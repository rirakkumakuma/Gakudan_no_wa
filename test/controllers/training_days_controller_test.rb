require 'test_helper'

class TrainingDaysControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get training_days_new_url
    assert_response :success
  end

  test "should get index" do
    get training_days_index_url
    assert_response :success
  end

  test "should get show" do
    get training_days_show_url
    assert_response :success
  end

end
