require 'test_helper'

class CreateProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_project = create_projects(:one)
  end

  test "should get index" do
    get create_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_create_project_url
    assert_response :success
  end

  test "should create create_project" do
    assert_difference('CreateProject.count') do
      post create_projects_url, params: { create_project: {  } }
    end

    assert_redirected_to create_project_url(CreateProject.last)
  end

  test "should show create_project" do
    get create_project_url(@create_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_project_url(@create_project)
    assert_response :success
  end

  test "should update create_project" do
    patch create_project_url(@create_project), params: { create_project: {  } }
    assert_redirected_to create_project_url(@create_project)
  end

  test "should destroy create_project" do
    assert_difference('CreateProject.count', -1) do
      delete create_project_url(@create_project)
    end

    assert_redirected_to create_projects_url
  end
end
