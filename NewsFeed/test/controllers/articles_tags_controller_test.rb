require 'test_helper'

class ArticlesTagsControllerTest < ActionController::TestCase
  setup do
    @articles_tag = articles_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create articles_tag" do
    assert_difference('ArticlesTag.count') do
      post :create, articles_tag: {  }
    end

    assert_redirected_to articles_tag_path(assigns(:articles_tag))
  end

  test "should show articles_tag" do
    get :show, id: @articles_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @articles_tag
    assert_response :success
  end

  test "should update articles_tag" do
    patch :update, id: @articles_tag, articles_tag: {  }
    assert_redirected_to articles_tag_path(assigns(:articles_tag))
  end

  test "should destroy articles_tag" do
    assert_difference('ArticlesTag.count', -1) do
      delete :destroy, id: @articles_tag
    end

    assert_redirected_to articles_tags_path
  end
end
