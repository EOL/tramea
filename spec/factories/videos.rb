# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :video do
    guid "MyString"
    locale 1
    preview false
    title "MyString"
    description "MyText"
    copyright "MyString"
    license_id 1
    original_url "MyString"
    url "MyString"
    javascript_id 1
    stylesheet_id 1
  end
end
