# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :translation do
    of_medium_type "MyString"
    of_medium_id 1
    to_medium_type "MyString"
    to_medium_id 1
  end
end
