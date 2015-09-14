class Comment < ActiveRecord::Base
	resourcify
	include Authority::Abilities

  belongs_to :user
  belongs_to :chart
end
