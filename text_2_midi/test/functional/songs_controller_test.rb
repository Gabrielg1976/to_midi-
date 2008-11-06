require 'test_helper'

class SongsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:songs)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_song
    assert_difference('Song.count') do
      post :create, :song => { }
    end

    assert_redirected_to song_path(assigns(:song))
  end

  def test_should_show_song
    get :show, :id => songs(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => songs(:one).id
    assert_response :success
  end

  def test_should_update_song
    put :update, :id => songs(:one).id, :song => { }
    assert_redirected_to song_path(assigns(:song))
  end

  def test_should_destroy_song
    assert_difference('Song.count', -1) do
      delete :destroy, :id => songs(:one).id
    end

    assert_redirected_to songs_path
  end
end
