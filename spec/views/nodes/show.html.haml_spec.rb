require 'rails_helper'

RSpec.describe "nodes/show", :type => :view do
  before(:each) do
    @node = assign(:node, Node.create!(
      :partner_id => 1,
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
