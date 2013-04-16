require 'test_helper'

class AuctionsControllerTest < ActionController::TestCase
  
	test "index" do
		get :index
		assert_response :success
		assert_template 'index'
	end

	test "gets show" do
		auction = Aucton.create(:name => 'Chair')
		get :show, :id => auction.to_param
		assert_response :success
		assert_template 'show'
	end

	test "create saves a new auction" do
		assert_difference "Auction.count", 1 do
			post :create, :auction => {:name => 'Windowshade'}
		end

		assert_response :redirect
		assert Auction.where (:name => 'Windowshade').any?
		assert_equal 1, Auction.where(:name => 'Windowshade').cou
	end

end
