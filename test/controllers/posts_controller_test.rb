require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

	test "Creating new post" do 
		assert Post.new
	end

	test "Destroy post" do
		p = Post.new
		assert p.destroy
	end

	test "Update post" do
		p = Post.new 
		p.update_attributes(:title=>'miao')
		
		assert_match('miao', p.title, "The post should be updated.")
	end

end
