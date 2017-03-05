class CreateFunctions < ActiveRecord::Migration
  def change
    create_table :functions do |t|
      t.string :nazwa, :default=>"", :null =>false

      t.timestamps null: false
    end
  end
end
