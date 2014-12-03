class AddItineraryToPoi < ActiveRecord::Migration
  def change
    add_reference :pois, :itinerary, index: true
  end
end
