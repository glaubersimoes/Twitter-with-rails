require 'spec_helper'

describe PagesController do
  
  render_views

   before(:each) do
     @base_title = "Mini Twitter"
   end

  describe "GET 'home'" do
    
    describe "when not signed in" do

         before(:each) do
           get :home
         end

         it "should be successful" do
           response.should be_success
         end

         it "should have the right title" do
           response.should have_selector("title",
                                         :content => "#{@base_title} | Principal")
         end
       end

       describe "when signed in" do

         before(:each) do
           @user = test_sign_in(Factory(:user))
           other_user = Factory(:user, :email => Factory.next(:email))
           other_user.follow!(@user)
         end
         
       end
    it "returns http success" do
      get 'home'
      response.should be_success
    end    
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
    
  end
  
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end    
  end
  
  
  
end
