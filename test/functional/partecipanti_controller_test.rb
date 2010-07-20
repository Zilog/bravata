require 'test_helper'

class PartecipantiControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partecipanti)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partecipante" do
    assert_difference('Partecipante.count') do
      post :create, :partecipante => { }
    end

    assert_redirected_to partecipante_path(assigns(:partecipante))
  end

  test "should show partecipante" do
    get :show, :id => partecipanti(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => partecipanti(:one).to_param
    assert_response :success
  end

  test "should update partecipante" do
    put :update, :id => partecipanti(:one).to_param, :partecipante => { }
    assert_redirected_to partecipante_path(assigns(:partecipante))
  end

  test "should destroy partecipante" do
    assert_difference('Partecipante.count', -1) do
      delete :destroy, :id => partecipanti(:one).to_param
    end

    assert_redirected_to partecipanti_path
  end
end
