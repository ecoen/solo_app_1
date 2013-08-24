require 'spec_helper'

describe "MoviePages" do
  
  describe "MovieListing page" do

    it "should have the content 'Movies'" do
      visit '/movie_pages/movie_listing'
      expect(page).to have_content('Movies')
    end

     it "should have the title 'Movie'" do
	      visit '/movie_pages/movie_listing'
	      expect(page).to have_title("Solo App | Movies")
    end
  end
end
