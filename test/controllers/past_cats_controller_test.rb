require 'test_helper'

class PastCatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @past_cat = past_cats(:one)
  end

  test "should get index" do
    get past_cats_url
    assert_response :success
  end

  test "should get new" do
    get new_past_cat_url
    assert_response :success
  end

  test "should create past_cat" do
    assert_difference('PastCat.count') do
      post past_cats_url, params: { past_cat: { cat_id: @past_cat.cat_id, whereabouts: @past_cat.whereabouts } }
    end

    assert_redirected_to past_cat_url(PastCat.last)
  end

  test "should show past_cat" do
    get past_cat_url(@past_cat)
    assert_response :success
  end

  test "should get edit" do
    get edit_past_cat_url(@past_cat)
    assert_response :success
  end

  test "should update past_cat" do
    patch past_cat_url(@past_cat), params: { past_cat: { cat_id: @past_cat.cat_id, whereabouts: @past_cat.whereabouts } }
    assert_redirected_to past_cat_url(@past_cat)
  end

  test "should destroy past_cat" do
    assert_difference('PastCat.count', -1) do
      delete past_cat_url(@past_cat)
    end

    assert_redirected_to past_cats_url
  end
end
