class AddAmountsToLoads < ActiveRecord::Migration[5.2]
  def change
    add_column :loads, :amount_due, :decimal
    add_column :loads, :amount_paid, :decimal
  end
end
