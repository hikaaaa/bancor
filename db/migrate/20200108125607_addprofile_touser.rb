class AddprofileTouser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :profile, :string
    add_column :users, :username, :string
    
  end
end
