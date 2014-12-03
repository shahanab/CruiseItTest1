class AddUserToItinerary < ActiveRecord::Migration
  def change
    add_reference :itineraries, :user, index: true
  end
end
