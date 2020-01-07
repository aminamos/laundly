class AddUserPhoneNumberToLoads < ActiveRecord::Migration[5.2]
  def change
    add_column :loads, :user_phone, :string
  end
end
