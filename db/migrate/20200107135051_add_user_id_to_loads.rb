class AddUserIdToLoads < ActiveRecord::Migration[5.2]
  def change
    add_reference :loads, :user, foreign_key: true
  end
end
