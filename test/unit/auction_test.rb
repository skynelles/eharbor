require 'test_helper'

class AuctionTest < ActiveSupport::TestCase
  
	test "to_param" do
		auction = Auction:create(:name => 'table')
		assert_equal "#{auction.id}-table", 
			auction.to_param
		assert_auction.to_param.include?('-table')
		assert_match /\d+-\w+
	end

end