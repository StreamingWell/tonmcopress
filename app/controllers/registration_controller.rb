class RegistrationController < ApplicationController

def new
		@registration = Registration.new
	end

  def create
    @registration = Registration.new(params[:registration])
    
    if @registration.valid?
      RegistrationsMailer.new_registration(@registration).deliver
      redirect_to(live_path)

    else
      redirect_to(root_path, :notice => "Please fill all fields and tick to confirm you are a journalist.")
    end
  end

end
