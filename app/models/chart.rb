class Chart < ActiveRecord::Base
	resourcify
	include Authority::Abilities

  belongs_to :user
  belongs_to :sex
  belongs_to :category
  belongs_to :pain_area
	has_many :comments, dependent: :destroy
end
