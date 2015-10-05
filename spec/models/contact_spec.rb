require 'rails_helper'

RSpec.describe Contact, type: :model do
  subject(:contact) {build(:contact)}
  it {should be_valid}

  describe "invalid when using comma" do
  	contact.email = 'user@someplace,com'
  	it {should_not be_valid}
  end
  

end
