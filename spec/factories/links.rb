# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :link do
    source_id 1
    name "MyString"
    url "MyString"
    position 1
  end
end
