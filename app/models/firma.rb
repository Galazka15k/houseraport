class Firma < ActiveRecord::Base
	has_many :fakturas
	has_many :kupnos
	has_many :produkts , through: :kupnos
end
