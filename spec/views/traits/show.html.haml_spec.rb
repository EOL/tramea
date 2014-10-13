require 'rails_helper'

RSpec.describe "traits/show", :type => :view do
  before(:each) do
    @trait = assign(:trait, Trait.create!(
      :subject_type => "Subject Type",
      :subject_id => 1,
      :original_predicate_name => "Original Predicate Name",
      :predicate_uri_id => 2,
      :value => "Value",
      :text => "Text",
      :object_uri_id => 3,
      :units => 4,
      :original_units_uri_id => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Subject Type/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Original Predicate Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Value/)
    expect(rendered).to match(/Text/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
