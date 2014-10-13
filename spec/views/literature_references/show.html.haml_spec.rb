require 'rails_helper'

RSpec.describe "literature_references/show", :type => :view do
  before(:each) do
    @literature_reference = assign(:literature_reference, LiteratureReference.create!(
      :parent_type => "Parent Type",
      :parent_id => 1,
      :string => "String"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Parent Type/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/String/)
  end
end
