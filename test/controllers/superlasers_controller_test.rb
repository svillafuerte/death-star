require 'test_helper'

class SuperlasersControllerTest < ActionController::TestCase
  setup do
    @superlaser = superlasers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:superlasers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create superlaser" do
    assert_difference('Superlaser.count') do
      post :create, superlaser: { name: @superlaser.name }
    end

    assert_redirected_to superlaser_path(assigns(:superlaser))
  end

  test "should show superlaser" do
    get :show, id: @superlaser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @superlaser
    assert_response :success
  end

  test "should update superlaser" do
    patch :update, id: @superlaser, superlaser: { name: @superlaser.name }
    assert_redirected_to superlaser_path(assigns(:superlaser))
  end

  test "should destroy superlaser" do
    assert_difference('Superlaser.count', -1) do
      delete :destroy, id: @superlaser
    end

    assert_redirected_to superlasers_path
  end
end
