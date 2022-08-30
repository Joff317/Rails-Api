class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  validates :email, presence: true 
  has_many :articles 

  devise :database_authenticatable, :registerable,
  :jwt_authenticatable,
	jwt_revocation_strategy: JwtDenylist
end
