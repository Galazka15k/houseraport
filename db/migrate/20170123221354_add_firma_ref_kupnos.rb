class AddFirmaRefKupnos < ActiveRecord::Migration
  def change
  	add_reference :kupnos, :firma, index: true, foreign_key: true
  end
end
