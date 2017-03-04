class Kupno < ActiveRecord::Base
	belongs_to :firma
	belongs_to :produkt


	validates :nazwa,  presence: true, length: { maximum: 50 }
end
