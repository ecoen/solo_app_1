class Movie < ActiveRecord::Base
    ALL_RATINGS = ["G", "PG", "R", "NR", "PG-13"]
    validates_inclusion_of :rating, :in => ALL_RATINGS

	validates :title, presence: true, length: { maximum: 50 }, 
		uniqueness: { case_sensitive: false }
	validates :rating, presence: true, length: { maximum: 5 }
	validates :director, presence:true, length: { maximum: 50 }
end
