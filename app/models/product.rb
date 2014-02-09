class Product < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }, 
		uniqueness: { case_sensitive: false }
	validates :description, presence: true, length: {maximum: 500}
	validates :price, presence: true
	validates :numberavailable, presence:true
	validates :imageurl, presence:true
 
	#belongs_to :orders

	def self.find_products_for_sale
  		find(:all, :order => "title")
	end

end
