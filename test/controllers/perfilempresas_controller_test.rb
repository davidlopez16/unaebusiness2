require 'test_helper'

class PerfilempresasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @perfilempresa = perfilempresas(:one)
  end

  test "should get index" do
    get perfilempresas_url
    assert_response :success
  end

  test "should get new" do
    get new_perfilempresa_url
    assert_response :success
  end

  test "should create perfilempresa" do
    assert_difference('Perfilempresa.count') do
      post perfilempresas_url, params: { perfilempresa: {  } }
    end

    assert_redirected_to perfilempresa_url(Perfilempresa.last)
  end

  test "should show perfilempresa" do
    get perfilempresa_url(@perfilempresa)
    assert_response :success
  end

  test "should get edit" do
    get edit_perfilempresa_url(@perfilempresa)
    assert_response :success
  end

  test "should update perfilempresa" do
    patch perfilempresa_url(@perfilempresa), params: { perfilempresa: {  } }
    assert_redirected_to perfilempresa_url(@perfilempresa)
  end

  test "should destroy perfilempresa" do
    assert_difference('Perfilempresa.count', -1) do
      delete perfilempresa_url(@perfilempresa)
    end

    assert_redirected_to perfilempresas_url
  end
end
