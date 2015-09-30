class ContactMe < ApplicationMailer

  def contact_email(contact)
    @contact = contact
    mail(to: 'nbr625@gmail.com', from: @contact.email, :subject => "Website Contact")
  end
end
