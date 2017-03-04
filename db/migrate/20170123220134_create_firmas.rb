class CreateFirmas < ActiveRecord::Migration
  def change
    create_table :firmas do |t|
      t.string :nazwa
      t.string :adres

      t.timestamps null: false
    end
  end
end
