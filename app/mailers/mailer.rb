class Mailer < ApplicationMailer

	def welcome(guest)
	@guest = guest
	mail(:to => guest.guest_email, :subject => "Thank you for registering with The Parsons Group")
	end
	
end
