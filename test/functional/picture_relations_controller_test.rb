require 'test_helper'

class PictureRelationsControllerTest < ActionController::TestCase
  setup do
    @picture_relation = picture_relations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:picture_relations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create picture_relation" do
    assert_difference('PictureRelation.count') do
      post :create, picture_relation: @picture_relation.attributes
    end

    assert_redirected_to picture_relation_path(assigns(:picture_relation))
  end

  test "should show picture_relation" do
    get :show, id: @picture_relation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @picture_relation
    assert_response :success
  end

  test "should update picture_relation" do
    put :update, id: @picture_relation, picture_relation: @picture_relation.attributes
    assert_redirected_to picture_relation_path(assigns(:picture_relation))
  end

  test "should destroy picture_relation" do
    assert_difference('PictureRelation.count', -1) do
      delete :destroy, id: @picture_relation
    end

    assert_redirected_to picture_relations_path
  end
end
