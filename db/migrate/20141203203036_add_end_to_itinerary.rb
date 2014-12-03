class AddEndToItinerary < ActiveRecord::Migration
  def change
    add_column :itineraries, :end, :date
  end
end
