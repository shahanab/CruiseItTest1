class CreatePois < ActiveRecord::Migration
  def change
    create_table :pois do |t|
      t.string :description

      t.timestamps
    end
  end
end
