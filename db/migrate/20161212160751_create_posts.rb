class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :content :limit=>10, :default=>"", :null =>false
      t.string :string :limit=>90, :default=>"", :null =>false
      t.string :user_id
      t.string :integer


      t.timestamps null: false
    end
   
  end
end
