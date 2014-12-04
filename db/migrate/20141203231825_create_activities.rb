class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.belongs_to :poi, index: true
      t.belongs_to :itinerary, index: true
      t.datetime :start_time

      t.timestamps
    end
  end
end
