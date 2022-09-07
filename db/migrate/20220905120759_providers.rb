class Providers < ActiveRecord::Migration[6.1]
  def change
    create_table :provider do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.integer :service_id
      t.timestamps
    end
  end
end
