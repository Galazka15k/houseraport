class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :content, :default=>"", :null =>false
      t.string :string, :default=>"", :null =>false
      t.string :user_id
      t.string :integer


      t.timestamps null: false
    end
   
  end
end
