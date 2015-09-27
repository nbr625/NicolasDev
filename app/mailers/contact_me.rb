class ContactMe < ApplicationMailer
  default from: "niberrizbe25@hotmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_me.NicolasDev_Visitor.subject
  #
  def NicolasDev_Visitor
    @greeting = "Hi"

    mail to: "nbr625@gmail.com", subject: "Contact from NicolasDev!"
  end
end
