class Contact < MailForm::Base
  attribute :name,       :validate => true
  attribute :email,      :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phonenumber, :validate => /\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/
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