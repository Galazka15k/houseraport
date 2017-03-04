class CreateFakturas < ActiveRecord::Migration
  def change
    create_table :fakturas do |t|
      t.string :nazwa
      t.integer :cena
      t.integer :firma_id

      t.timestamps null: false
    end
  end
end
