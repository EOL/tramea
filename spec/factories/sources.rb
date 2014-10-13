# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :source do
    name "MyString"
    full_name "MyString"
    abbr "MyString"
    description "MyText"
    private_notes "MyText"
    admin_notes "MyText"
    icon ""
    url "MyString"
    small_icon_url "MyString"
  end
end
