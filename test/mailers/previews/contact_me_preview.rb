# Preview all emails at http://localhost:3000/rails/mailers/contact_me
class ContactMePreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_me/NicolasDev_Visitor
  def NicolasDev_Visitor
    ContactMe.NicolasDev_Visitor
  end

end
