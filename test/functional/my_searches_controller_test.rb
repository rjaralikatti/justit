require 'test_helper'

class MySearchesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => MySearch.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    MySearch.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    MySearch.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to my_search_url(assigns(:my_search))
  end

  def test_edit
    get :edit, :id => MySearch.first
    assert_template 'edit'
  end

  def test_update_invalid
    MySearch.any_instance.stubs(:valid?).returns(false)
    put :update, :id => MySearch.first
    assert_template 'edit'
  end

  def test_update_valid
    MySearch.any_instance.stubs(:valid?).returns(true)
    put :update, :id => MySearch.first
    assert_redirected_to my_search_url(assigns(:my_search))
  end

  def test_destroy
    my_search = MySearch.first
    delete :destroy, :id => my_search
    assert_redirected_to my_searches_url
    assert !MySearch.exists?(my_search.id)
  end
end
