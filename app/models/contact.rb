class Contact < MailForm::Base
  attribute :name,       :validate => true
  attribute :email,      :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phonenumber, :validate => /^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$/
  attribute :message
  

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "NicolasDev Contact",
      :to => "nbr625@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end