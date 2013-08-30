require 'spec_helper'

describe "MoviePages" do
  subject{page}
  
  describe "MovieListing page" do
    before {visit movie_listing_path}

    it { should have_content('Movies')}
    it { should have_title(full_title('Movies'))}
  end
end
