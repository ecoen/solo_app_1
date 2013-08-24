require 'spec_helper'

describe "Main pages" do

  describe "Home page" do

    it "should have the content 'Solo App'" do
      visit '/main_pages/home'
      expect(page).to have_content('Solo App')
    end
  
	 it "should have the title 'Home'" do
	      visit '/main_pages/home'
	      expect(page).to have_title("Solo App | Home")
    end
  end
end


