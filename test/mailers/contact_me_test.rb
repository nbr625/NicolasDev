require 'test_helper'

class ContactMeTest < ActionMailer::TestCase
  test "NicolasDev_Visitor" do
    mail = ContactMe.NicolasDev_Visitor
    assert_equal "Nicolasdev visitor", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
