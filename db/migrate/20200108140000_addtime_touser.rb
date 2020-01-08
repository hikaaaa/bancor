class AddtimeTouser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :time, :integer
  end
end
