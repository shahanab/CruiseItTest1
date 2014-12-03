class AddStartToItinerary < ActiveRecord::Migration
  def change
    add_column :itineraries, :start, :date
  end
end
