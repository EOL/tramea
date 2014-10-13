# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :literature_reference do
    parent_type "MyString"
    parent_id 1
    string "MyString"
  end
end
