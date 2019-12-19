class Addrevervetouser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :reserve ,:Float
  end
end
