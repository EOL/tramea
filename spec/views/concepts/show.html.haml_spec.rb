require 'rails_helper'

RSpec.describe "concepts/show", :type => :view do
  before(:each) do
    @concept = assign(:concept, Concept.create!(
      :source_id => 1,
      :parent_id => 2,
      :original_id => "Original"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Original/)
  end
end
