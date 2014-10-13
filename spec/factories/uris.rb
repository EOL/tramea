# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :uri do
    string "MyString"
    locale 1
    position 1
  end
end
