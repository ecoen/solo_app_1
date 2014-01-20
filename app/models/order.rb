class Order < ActiveRecord::Base
	has_many :products
	has_one :user
end
