class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.float :cw
      t.float :price
      t.float :supply

      t.timestamps
    end
  end
end
