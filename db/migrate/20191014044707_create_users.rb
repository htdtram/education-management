class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password
      t.boolean :gender
      t.string :address

      t.timestamps
    end
    add_index :users, :username, unique: true
  end
end
