class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    drop_table :users
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :username
      t.string :phone_num
      t.string :address
      t.string :birthday
      t.boolean :admin
      t.boolean :block
      t.integer :wallet_point
      t.string :default_payment

      t.timestamps
    end
  end
end
