# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :appearance do
    name_id 1
    publication_id 1
    page "MyString"
    url_snippet "MyString"
  end
end
