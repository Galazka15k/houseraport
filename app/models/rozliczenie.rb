class Rozliczenie < ActiveRecord::Base
	has_many :users

validates :obrot, :format => { :with => /\A(\+1)?[0-9]{4}\z/, :message => "to musza byc cyfry" }, presence: { message: "nie moze być pusty!" }
validates :kasa_fiskalna, presence: { message: "musiał coś zarobic!" },length: { maximum: 4, minimum: 1 }
validates :w_sushimaster, presence: { message: "musiał coś zarobic!" },length: { maximum: 3, minimum: 3 }
validates :w_kelnterka, presence: { message: "musiał coś zarobic!" },length: { maximum: 2, minimum: 2 }
validates :w_dostawca, presence: { message: "musiał coś zarobic!" },length: { maximum: 3, minimum: 2 }




end
