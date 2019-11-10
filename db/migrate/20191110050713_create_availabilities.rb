class CreateAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :availabilities do |t|
      t.references :store, foreign_key: true
      t.string :day_of_week
      t.integer :start_time
      t.integer :end_time

      t.timestamps
    end
  end
end
