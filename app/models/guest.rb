class Guest < ActiveRecord::Base
	has_many:reservations, :dependent => :destroy
	
	#validate :guest_first_name,:guest_last_name,guest_email, presence: true
	#validate :guest_email, uniqueness: true
	#validate :password_digest, lenght { in: 6..20}
end
