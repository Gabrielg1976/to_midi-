require 'test_helper'

class TutorialsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:tutorials)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_tutorials
    assert_difference('Tutorials.count') do
      post :create, :tutorials => { }
    end

    assert_redirected_to tutorials_path(assigns(:tutorials))
  end

  def test_should_show_tutorials
    get :show, :id => tutorials(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => tutorials(:one).id
    assert_response :success
  end

  def test_should_update_tutorials
    put :update, :id => tutorials(:one).id, :tutorials => { }
    assert_redirected_to tutorials_path(assigns(:tutorials))
  end

  def test_should_destroy_tutorials
    assert_difference('Tutorials.count', -1) do
      delete :destroy, :id => tutorials(:one).id
    end

    assert_redirected_to tutorials_path
  end
end
