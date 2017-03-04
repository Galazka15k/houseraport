class AddProduktRefToKupnos < ActiveRecord::Migration
  def change
    add_reference :kupnos, :produkt, index: true, foreign_key: true
  end
end
