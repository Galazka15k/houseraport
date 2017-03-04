class Userfun < ActiveRecord::Base
	belongs_to :user
	belongs_to :function

scope :sortuj_s, lambda{order ("userfuns.nazwa ASC")}
end
