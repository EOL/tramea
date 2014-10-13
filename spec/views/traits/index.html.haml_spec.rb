require 'rails_helper'

RSpec.describe "traits/index", :type => :view do
  before(:each) do
    assign(:traits, [
      Trait.create!(
        :subject_type => "Subject Type",
        :subject_id => 1,
        :original_predicate_name => "Original Predicate Name",
        :predicate_uri_id => 2,
        :value => "Value",
        :text => "Text",
        :object_uri_id => 3,
        :units => 4,
        :original_units_uri_id => 5
      ),
      Trait.create!(
        :subject_type => "Subject Type",
        :subject_id => 1,
        :original_predicate_name => "Original Predicate Name",
        :predicate_uri_id => 2,
        :value => "Value",
        :text => "Text",
        :object_uri_id => 3,
        :units => 4,
        :original_units_uri_id => 5
      )
    ])
  end

  it "renders a list of traits" do
    render
    assert_select "tr>td", :text => "Subject Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Original Predicate Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Value".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
