# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trait do
    subject_type "MyString"
    subject_id 1
    original_predicate_name "MyString"
    predicate_uri_id 1
    value "MyString"
    text "MyString"
    object_uri_id 1
    units 1
    original_units_uri_id 1
  end
end
