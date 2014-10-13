# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :association do
    parent_type "MyString"
    parent_id 1
    child_type "MyString"
    child_id 1
    trusted false
    reviewed false
    visible false
    overview false
    position 1
    rating 1.5
    num_ratings 1
  end
end
