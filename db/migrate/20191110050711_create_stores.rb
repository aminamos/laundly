class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
