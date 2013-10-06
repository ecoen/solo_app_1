require 'spec_helper'

describe Movie do
  
  before {@movie = Movie.new(title: "Zombieland", rating: "R", 
  	director: "Zombie Director")}

  subject {@movie}

  it {should respond_to(:title)}
  it {should respond_to (:rating)}
  it {should respond_to (:director)}
  it {should be_valid}

  describe "when title is not present" do
  	before { @movie.title = " "}
  	it { should_not be_valid }
  end

  describe "when rating is not present" do
  	before {@movie.rating = " "}
  	it {should_not be_valid}
  end

  describe "when director is not present" do
  	before {@movie.director = " "}
  	it {should_not be_valid}
  end

  describe "when title is too long" do
    before { @movie.title = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when rating is too long" do
  	before { @movie.rating = "a" * 6}
  	it { should_not be_valid }
  end

  describe "when director is too long" do
  	before { @movie.director = "a" * 51 }
  	it {should_not be_valid }
  end

  describe "when rating format is invalid" do
    it "should be invalid" do
      ratings = %w[F A B BC BA ZA ZF]
      ratings.each do |invalid_rating|
        @movie.rating = invalid_rating
        expect(@movie).not_to be_valid
      end
    end
  end

  describe "when rating format is valid" do
    it "should be valid" do
      ratings = %w[G PG R PG-13 NR]
      ratings.each do |valid_rating|
        @movie.rating = valid_rating
        expect(@movie).to be_valid
      end
    end
  end

  describe "when title is already taken" do
    before do
      movie_with_same_title = @movie.dup
      movie_with_same_title.title = @movie.title.upcase
      movie_with_same_title.save
    end
    it { should_not be_valid }
  end

  describe "email address with mixed case" do
    let(:mixed_case_rating) { "r" }

    it "should be saved as all upper-case" do
      @movie.rating = mixed_case_rating
      @movie.save
      expect(@movie.reload.rating).to eq "R"
    end
  end

end
