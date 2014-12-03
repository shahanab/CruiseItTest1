class Itinerary < ActiveRecord::Base
	has_many :pois
	belongs_to :user

	validate :start_time_not_in_past
	validate :end_time_not_in_past

	private
	def start_time_not_in_past
	  if start
	    if self.start < DateTime.now - 1.day
	      errors.add :start, 'No Time Traveling Allowed'
	    end
	  end
	end

	def end_time_not_in_past
	  if self.end
	    if self.end < self.start
	      errors.add :end, "You can't finish before you start!"
	    end
	  end
	end

end


