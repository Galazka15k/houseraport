class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string "imie"
    	t.string "nazwisko"
    	t.string "user"
    	t.string "email", :default=>"", :null =>false
    	t.string "telefon", :default=>"", :null =>false
    	t.string "password_digest"
      
      t.timestamps null: false
    end
    add_index("users", "user")
  end

  def down
  	drop_table :users
  end
end
