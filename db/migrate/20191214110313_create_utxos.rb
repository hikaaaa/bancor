class CreateUtxos < ActiveRecord::Migration[6.0]
  def change
    create_table :utxos do |t|
      t.string :email
      t.string :token
      t.float :ammount

      t.timestamps
    end
  end
end
