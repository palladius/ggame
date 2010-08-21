require 'test_helper'

class MatchesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Match.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Match.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Match.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to match_url(assigns(:match))
  end
  
  def test_edit
    get :edit, :id => Match.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Match.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Match.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Match.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Match.first
    assert_redirected_to match_url(assigns(:match))
  end
  
  def test_destroy
    match = Match.first
    delete :destroy, :id => match
    assert_redirected_to matches_url
    assert !Match.exists?(match.id)
  end
end
