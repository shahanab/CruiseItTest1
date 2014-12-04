class AddDestinationToItinerary < ActiveRecord::Migration
  def change
    add_reference :itineraries, :destination, index: true
  end
end
