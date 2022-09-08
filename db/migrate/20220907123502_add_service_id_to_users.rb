class AddServiceIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :service_id, :integer
  end
end
