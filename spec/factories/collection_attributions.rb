# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :collection_attribution do
    medium_type 1
    medium_id 1
    who "MyString"
    url "MyString"
    role_id 1
  end
end
