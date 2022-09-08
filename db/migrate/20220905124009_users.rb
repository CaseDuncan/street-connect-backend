class Users < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :user_type 
      t.string :image_url
      t.string :phone
      t.timestamps
    end
  end
end
