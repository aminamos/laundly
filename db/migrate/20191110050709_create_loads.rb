class CreateLoads < ActiveRecord::Migration[5.2]
  def change
    create_table :loads do |t|
      t.datetime :pickup
      t.integer :weight
      t.boolean :paid
      t.string :status

      t.timestamps
    end
  end
end
