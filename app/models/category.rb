class Category < ActiveRecord::Base
	resourcify
	include Authority::Abilities

  belongs_to :user
	has_many :charts, dependent: :nullify
end
