class CreateUsers < ActiveRecord::Migration[5.0]

  def up
    create_table :users do |t|
      
      t.column "first_name", :string, :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "username", :string, :limit => 25
      t.string "password_digest", :string

      t.timestamps
    end
  end

  def down
    drop_table :users
  end

end
