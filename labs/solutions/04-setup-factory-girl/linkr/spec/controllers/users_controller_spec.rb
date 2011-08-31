require 'spec_helper'

describe UsersController do

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end

    it "creates a new user" do
      get 'new'
      assigns[:user].should_not be_nil
    end
  end

  describe "POST 'create'" do
    it "should be successful" do
      post 'create'
      response.should be_success
    end

    it "should create a new user" do
      lambda {
        post 'create', :user => { :nickname => 'jack', :email => 'jack@example.com',
                                 :password => 'password', :password_confirmation => 'password' }
      }.should change(User, :count).by(1)
    end
  end

end
