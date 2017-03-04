class CreateRozliczenies < ActiveRecord::Migration
  def change
    create_table :rozliczenies do |t|
      t.string :nazwa
      t.integer :kasa_fiskalna
      t.integer :obrot
      t.integer :karta
      t.integer :w_sushimaster
      t.integer :w_ciepla
      t.integer :w_dostawca
      t.integer :w_kelnterka
      t.string :i_sushimaster
      t.string :i_ciepla
      t.string :i_dostawca
      t.string :i_kelnterka
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
