class Activity < ActiveRecord::Base
  belongs_to :poi
  belongs_to :itinerary

  validates :itinerary, presence: true
end
