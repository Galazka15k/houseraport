class CreateFunctions < ActiveRecord::Migration
  def change
    create_table :functions do |t|
      t.string :nazwa :limit=>15, :default=>"", :null =>false

      t.timestamps null: false
    end
  end
end
