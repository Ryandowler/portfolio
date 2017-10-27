require 'test_helper'

class ProjectosControllerTest < ActionController::TestCase
  setup do
    @projecto = projectos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projectos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projecto" do
    assert_difference('Projecto.count') do
      post :create, projecto: { body: @projecto.body, completed: @projecto.completed, image: @projecto.image, title: @projecto.title }
    end

    assert_redirected_to projecto_path(assigns(:projecto))
  end

  test "should show projecto" do
    get :show, id: @projecto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projecto
    assert_response :success
  end

  test "should update projecto" do
    patch :update, id: @projecto, projecto: { body: @projecto.body, completed: @projecto.completed, image: @projecto.image, title: @projecto.title }
    assert_redirected_to projecto_path(assigns(:projecto))
  end

  test "should destroy projecto" do
    assert_difference('Projecto.count', -1) do
      delete :destroy, id: @projecto
    end

    assert_redirected_to projectos_path
  end
end
