class AddInvoiceIdToLoads < ActiveRecord::Migration[5.2]
  def change
    add_column :loads, :invoice_id, :string
  end
end
