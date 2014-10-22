# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :name do
    string "MyString"
    type 1
    locale 1
  end
end
