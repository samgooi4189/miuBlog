require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


	test "Checking fixtures executability" do
		assert_same(1002, Post.all.count, "The total posts should be 102, but the count is #{Post.all.count}")
	end

end
