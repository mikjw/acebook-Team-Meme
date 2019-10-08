class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :firstname, :null => false
      t.string :surname, :null => false
      t.string :email, :null => false, unique: true
      t.string :password, :null => false
      t.date :birthday, :null => false
      t.string :gender, :null => false
      t.string :test_colum, :null => false
      t.timestamp :confirmed_at, :null => false

    end
  end
end
