require 'spec_helper'

describe "MoviePages" do
  subject{page}

  describe "Movie page" do
  let(:movie) { FactoryGirl.create(:movie) }
  before { visit movie_path(movie) }

  it { should have_content(movie.title) }
  it { should have_title(movie.title) }
 end

 describe "Create new movie" do

    before { visit addmovie_path }

    let(:submit) { "Create new movie" }

    describe "with invalid information" do
      it "should not create a movie" do
        expect { click_button submit }.not_to change(Movie, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Title",         with: "Example Movie"
        fill_in "Director",        with: "Example Director"
        fill_in "Rating",     with: "PG"
      end

      it "should create a movie" do
        expect { click_button submit }.to change(Movie, :count).by(1)
      end
    end
  end

end
