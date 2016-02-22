class Room < ActiveRecord::Base
	belongs_to :hotel
	belongs_to :room_type
	has_many :reservations
end
