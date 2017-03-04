class CreateKupnos < ActiveRecord::Migration
  def change
    create_table :kupnos do |t|
      t.string :nazwa

      t.timestamps null: false
    end
  end
end
