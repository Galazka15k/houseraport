class CreateUserfuns < ActiveRecord::Migration
  def change
    create_table :userfuns do |t|
      t.string :nazwa
      t.integer :user_id
      t.integer :function_id

      t.timestamps null: false
    end
  end
end
