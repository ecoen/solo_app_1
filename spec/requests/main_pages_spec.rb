require 'spec_helper'

describe "Main pages" do

  describe "Home page" do

    it "should have the content 'Solo App'" do
      visit '/main_pages/home'
      expect(page).to have_content('Solo App')
    end

    it "should have the base title" do
      visit '/main_pages/home'
      expect(page).to have_title("Ruby on Rails Solo App")
    end

    it "should not have a custom page title" do
      visit '/main_pages/home'
      expect(page).not_to have_title('| Home')
    end

  end
end


