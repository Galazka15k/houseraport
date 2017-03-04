class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string "imie", :limit=>20
    	t.string "nazwisko", :limit=>30
    	t.string "user", :limit=>20
    	t.string "email", :limit=>90, :default=>"", :null =>false
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
