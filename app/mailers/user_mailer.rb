class UserMailer < ActionMailer::Base
 default :from => "shekargudepu@gmail.com"
 
  def registration_confirmation(contact)
      @contact = contact
      @url  = 'http://example.com/login'
    mail(:to => @contact.email, :subject => "Registered OK")
  end

end
