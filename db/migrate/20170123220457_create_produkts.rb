class CreateProdukts < ActiveRecord::Migration
  def change
    create_table :produkts do |t|
      t.string :nazwa

      t.timestamps null: false
    end
  end
end
