class Reservation < ActiveRecord::Base
	has_many:room_types
	belongs_to :hotel
	belongs_to :guest
end
