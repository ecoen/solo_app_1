require 'test_helper'

class UserTest < ActiveSupport::TestCase
  

   test "create user" do
   		user = User.new
   		assert !user.save, "Saved user without anything"
   	end

   	test "create user without email" do
   		user = User.new
   		user.name = "Beth Coen"
   		user.password = "foobar"
   		assert !user.save, "Should not save user without email"
   	end

   	test "create user without name" do
   		user = User.new
   		user.email = "test@test.com"
   		user.password = "foobar"
   		user.password_confirmation = "foobar"
   		assert !user.save, "User not saved without name"
   	end

   	test "create user with password length less than six" do
   		user = User.new
   		user.name = "Example User"
   		user.email = "user@example.com"
        user.password = "foo"
        user.password_confirmation = "foo" 
   		assert !user.save, "User not saved because password length is less than six"
   	end

   	test "create user with required attributes" do
   		user = User.new
   		user.name = "Example User"
   		user.email = "user@example.com"
        user.password = "foobar"
        user.password_confirmation = "foobar" 
   		assert user.save, "User saved"
   	end

   	test "create user with invalid email" do
   		user = User.new
   		user.name = "Example User"
   		user.email = "user.example.com"
        user.password = "foobar"
        user.password_confirmation = "foobar" 
   		assert !user.save, "User not saved because of invalid email"
   	end

   
end
