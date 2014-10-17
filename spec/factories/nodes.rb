# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :node do
    source_id 1
    parent_id 1
    original_id "MyString"
  end
end
