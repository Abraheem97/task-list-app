# frozen_string_literal: true

require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get tasks_new_url
    assert_response :success
  end

  test 'should get create' do
    get tasks_create_url
    assert_response :success
  end

  test 'should get edit' do
    get tasks_edit_url
    assert_response :success
  end

  test 'should get update' do
    get tasks_update_url
    assert_response :success
  end

  test 'should get destroy' do
    get tasks_destroy_url
    assert_response :success
  end
end
