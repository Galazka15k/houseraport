class Produkt < ActiveRecord::Base
	has_many :kupnos
	has_many :firmas , through: :kupnos
end
