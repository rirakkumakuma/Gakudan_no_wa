# frozen_string_literal: true

require 'test_helper'

class OrchestrasControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get orchestras_new_url
    assert_response :success
  end

  test 'should get create' do
    get orchestras_create_url
    assert_response :success
  end
end
