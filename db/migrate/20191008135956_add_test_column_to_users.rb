class AddTestColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :test_column, :string
  end
end
