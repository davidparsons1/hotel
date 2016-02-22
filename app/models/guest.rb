class Guest < ActiveRecord::Base
	has_secure_password
	has_many:reservations, :dependent => :destroy
	
	#validates	:guest_first_name, :guest_last_name, :guest_email, presence: true
	#validates :guest_email, uniqueness: true
	#validates :password_digest, length: { in: 6..20}
end
