class Product < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }, 
		uniqueness: { case_sensitive: false }
	validates :price, presence: true
	validates :numberavailable, presence:true
	validates :imageurl, presence:true
	belongs_to :orders
end
