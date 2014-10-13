# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :old_image do
    guid "MyString"
    locale 1
    preview false
    title "MyString"
    description "MyText"
    copyright "MyString"
    string "MyString"
    license_id 1
    original_url "MyString"
    full_size_url "MyString"
    crop_url "MyString"
    thumbnail_url "MyString"
    image_id 1
  end
end
