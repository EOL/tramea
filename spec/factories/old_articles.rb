# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :old_article do
    guid "MyString"
    locale 1
    section_id 1
    title "MyString"
    body "MyText"
    copyright "MyString"
    license_id 1
    original_url "MyString"
    javascript_id 1
    stylesheet_id 1
    article_id 1
  end
end
