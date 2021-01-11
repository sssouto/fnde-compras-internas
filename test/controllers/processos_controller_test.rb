require 'test_helper'

class ProcessosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get processos_index_url
    assert_response :success
  end

  test "should get show" do
    get processos_show_url
    assert_response :success
  end

  test "should get new" do
    get processos_new_url
    assert_response :success
  end

  test "should get create" do
    get processos_create_url
    assert_response :success
  end

  test "should get edit" do
    get processos_edit_url
    assert_response :success
  end

  test "should get update" do
    get processos_update_url
    assert_response :success
  end

end
