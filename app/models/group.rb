class Group < ApplicationRecord
	
	# groupify :group, members: [:users, :assignments], default_members: :users
	
	has_many :users
	has_many :members
	# has_many :users, through: :members
end
