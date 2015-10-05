FactoryGirl.define do
  factory :contact do |f|
  	f.name {Faker::Name.name}
  	f.email {Faker::Internet.safe_email('Nicolas')}
  	f.message {Faker::Lorem.sentences}
    
  end

end
