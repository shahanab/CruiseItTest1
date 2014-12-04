class Itinerary < ActiveRecord::Base
	has_many :pois, through: :activities
	has_many :activities
	belongs_to :user
	has_one :destination

	validate :start_time_not_in_past
	validate :end_time_not_in_past
	
	# validates :location, inclusion: (0..1)

	# scope :virgingorda, ->{where(state:0)}
	# scope :tortola, ->{where(state:1)}

	# def destination
	# 	case location
	# 		when 0 then "Virgin Gorda"
	# 		when 1 then "Tortola"
	# 	end
	# end	

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


