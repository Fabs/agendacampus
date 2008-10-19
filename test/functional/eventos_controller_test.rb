require File.dirname(__FILE__) + '/../test_helper'

class EventosControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:eventos)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_evento
    assert_difference('Evento.count') do
      post :create, :evento => { }
    end

    assert_redirected_to evento_path(assigns(:evento))
  end

  def test_should_show_evento
    get :show, :id => eventos(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => eventos(:one).id
    assert_response :success
  end

  def test_should_update_evento
    put :update, :id => eventos(:one).id, :evento => { }
    assert_redirected_to evento_path(assigns(:evento))
  end

  def test_should_destroy_evento
    assert_difference('Evento.count', -1) do
      delete :destroy, :id => eventos(:one).id
    end

    assert_redirected_to eventos_path
  end
end
