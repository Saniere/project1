class User < ActiveRecord::Base
	rolify
	include Authority::UserAbilities
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

	has_many :categories, dependent: :nullify
	has_many :charts, dependent: :destroy
end
