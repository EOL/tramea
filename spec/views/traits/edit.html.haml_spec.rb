require 'rails_helper'

RSpec.describe "traits/edit", :type => :view do
  before(:each) do
    @trait = assign(:trait, Trait.create!(
      :subject_type => "MyString",
      :subject_id => 1,
      :original_predicate_name => "MyString",
      :predicate_uri_id => 1,
      :value => "MyString",
      :text => "MyString",
      :object_uri_id => 1,
      :units => 1,
      :original_units_uri_id => 1
    ))
  end

  it "renders the edit trait form" do
    render

    assert_select "form[action=?][method=?]", trait_path(@trait), "post" do

      assert_select "input#trait_subject_type[name=?]", "trait[subject_type]"

      assert_select "input#trait_subject_id[name=?]", "trait[subject_id]"

      assert_select "input#trait_original_predicate_name[name=?]", "trait[original_predicate_name]"

      assert_select "input#trait_predicate_uri_id[name=?]", "trait[predicate_uri_id]"

      assert_select "input#trait_value[name=?]", "trait[value]"

      assert_select "input#trait_text[name=?]", "trait[text]"

      assert_select "input#trait_object_uri_id[name=?]", "trait[object_uri_id]"

      assert_select "input#trait_units[name=?]", "trait[units]"

      assert_select "input#trait_original_units_uri_id[name=?]", "trait[original_units_uri_id]"
    end
  end
end
