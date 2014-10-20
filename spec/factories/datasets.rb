# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dataset do
    partner_id 1
    name "MyString"
    full_name "MyString"
    abbr "MyString"
    description "MyText"
    private_notes "MyText"
    admin_notes "MyText"
    url "MyString"
    license_id 1
  end
end
