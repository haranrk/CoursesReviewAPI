require 'test_helper'

class ProfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prof = profs(:one)
  end

  test "should get index" do
    get profs_url, as: :json
    assert_response :success
  end

  test "should create prof" do
    assert_difference('Prof.count') do
      post profs_url, params: { prof: { dept: @prof.dept, name: @prof.name } }, as: :json
    end

    assert_response 201
  end

  test "should show prof" do
    get prof_url(@prof), as: :json
    assert_response :success
  end

  test "should update prof" do
    patch prof_url(@prof), params: { prof: { dept: @prof.dept, name: @prof.name } }, as: :json
    assert_response 200
  end

  test "should destroy prof" do
    assert_difference('Prof.count', -1) do
      delete prof_url(@prof), as: :json
    end

    assert_response 204
  end
end
