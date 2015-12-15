require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Add comment functionality" do
  	user = FactoryGirl.create(:user)
  	sign_in user
  	place = FactoryGirl.create(:place, :user => user)
  	# comment = FactoryGirl.create(:comment)

  	assert_difference 'Comment.count' do
  		post :create, :place_id => place.id, :comment => {
  			:message => 'Nice one',
  			:rating => '4_stars'
  		}
  	end
  	    assert_redirected_to place_path(place)
  	    assert_equal 1, place.comments.count
  end





end  



	    
 