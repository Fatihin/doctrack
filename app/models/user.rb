class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable ,:authentication_keys => [:iduser]
  validates :iduser, presence: true, length: { maximum: 10 }, uniqueness: true

  
  has_one :document, dependent: :destroy
  
  has_many :assigns
  has_many :apps, through: :assings

  	def admin?
  		has_role?(:admin)
  	end
 
	def staff?
  		has_role?(:staff)
	end 
end
