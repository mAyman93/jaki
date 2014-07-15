require 'rails_helper'

RSpec.describe "Users", :type => :request do
   
    describe "about page" do
    	it "should have a title 'Demo | About Us'" do
    		visit about_path
    		save_and_open_page
    		expect(page).to have_title("Demo | About Us")
    	end
	end

  end
end
