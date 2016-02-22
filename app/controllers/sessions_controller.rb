class SessionsController < ApplicationController
  def new
  end
  
   def create
     guest = Guest.find_by_guest_email(params[:guest_email])
    if guest && guest.authenticate(params[:password])
	 session[:guest_id] = guest.id
    redirect_to guest
	flash[:notice] = "Logged in"
    else
	flash.now[:danger] = 'Invalid email/password combination' 
      render 'new'
	  
  end
  end

  def destroy
  
	log_out
	redirect_to root_url
	flash[:notice] = "Logged out"
end


  end
  

