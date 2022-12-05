require 'test_helper'

class CcAsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cca = ccas(:one)
  end

  test "should get index" do
    get ccas_url
    assert_response :success
  end

  test "should get new" do
    get new_cca_url
    assert_response :success
  end

  test "should create cca" do
    assert_difference('Cca.count') do
      post ccas_url, params: { cca: { description: @cca.description, name: @cca.name } }
    end

    assert_redirected_to cca_url(Cca.last)
  end

  test "should show cca" do
    get cca_url(@cca)
    assert_response :success
  end

  test "should get edit" do
    get edit_cca_url(@cca)
    assert_response :success
  end

  test "should update cca" do
    patch cca_url(@cca), params: { cca: { description: @cca.description, name: @cca.name } }
    assert_redirected_to cca_url(@cca)
  end

  test "should destroy cca" do
    assert_difference('Cca.count', -1) do
      delete cca_url(@cca)
    end

    assert_redirected_to ccas_url
  end
end
