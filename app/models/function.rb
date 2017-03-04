class Function < ActiveRecord::Base
	has_many :users
	has_many :userfun
	validates :nazwa, presence: true, length: { maximum: 15 }
end
