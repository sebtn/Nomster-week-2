class Comment < ActiveRecord::Base
	belogns_to :user
	belogs_to :place
end
