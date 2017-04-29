class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   
  	# groupify :group_member
  	# groupify :named_group_member

    validates :email, :presence => true, :uniqueness => true
    has_many :groups
    has_many :members
    # has_many :groups, through: :members
end
