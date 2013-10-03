require 'test_helper'

class UserTest < ActiveSupport::TestCase
	test "a user should enter their first name" do 
		user = User.new
		assert !user.save
		assert !user.errors[:first_name].empty?
	end
	test "a user should enter their last name" do 
		user = User.new
		assert !user.save
		assert !user.errors[:last_name].empty?
	end
	test "a user should enter their profile name" do 
		user = User.new
		assert !user.save
		assert !user.errors[:profile_name].empty?
	end
	test "a user should have a unique profile name" do 
		user = User.new
		user.profile_name = "briangoldstein"
		user.email ="kapp.gold@gmail.com"
		user.first_name ="Brian"
		user.last_name ="Goldstein"
		user.password ="Barry913"
		user.password_confirmation = "Barry913"
		
		assert !user.save
		puts user.errors.inspect
		assert !user.errors[:profile_name].empty?
	end
end
