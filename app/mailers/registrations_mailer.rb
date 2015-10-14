class RegistrationsMailer < ActionMailer::Base

  default :from => "branden.mittra@streamingwell.com"
  default :to => "branden.mittra@streamingwell.com"

  def new_registration(registration)
    @registration = registration
    mail(:subject => "Eisai Media Portal Registration")
  end

end