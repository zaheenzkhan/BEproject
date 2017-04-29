class Member < ApplicationRecord
	# groupify :group_member, group_class_name: 'Group'
	belongs_to :group
	belongs_to :user
end
