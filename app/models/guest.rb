class Guest < ActiveRecord::Base
	has_secure_password
	has_many:reservations, :dependent => :destroy
	has_many:reviews
	
	validates	:guest_first_name, :guest_last_name, :guest_email, presence: true
	validates :guest_email, uniqueness: true

end
