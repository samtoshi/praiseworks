require 'test_helper'

class MebmersControllerTest < ActionController::TestCase
  setup do
    @mebmer = mebmers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mebmers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mebmer" do
    assert_difference('Mebmer.count') do
      post :create, mebmer: { admin: @mebmer.admin, mail: @mebmer.mail, memo: @mebmer.memo, name: @mebmer.name, pass: @mebmer.pass, userid: @mebmer.userid }
    end

    assert_redirected_to mebmer_path(assigns(:mebmer))
  end

  test "should show mebmer" do
    get :show, id: @mebmer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mebmer
    assert_response :success
  end

  test "should update mebmer" do
    patch :update, id: @mebmer, mebmer: { admin: @mebmer.admin, mail: @mebmer.mail, memo: @mebmer.memo, name: @mebmer.name, pass: @mebmer.pass, userid: @mebmer.userid }
    assert_redirected_to mebmer_path(assigns(:mebmer))
  end

  test "should destroy mebmer" do
    assert_difference('Mebmer.count', -1) do
      delete :destroy, id: @mebmer
    end

    assert_redirected_to mebmers_path
  end
end
