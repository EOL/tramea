require 'rails_helper'

RSpec.describe "nodes/index", :type => :view do
  before(:each) do
    assign(:nodes, [
      Node.create!(
        :partner_id => 1,
        :parent_id => 2,
        :original_id => "Original"
      ),
      Node.create!(
        :partner_id => 1,
        :parent_id => 2,
        :original_id => "Original"
      )
    ])
  end

  it "renders a list of nodes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Original".to_s, :count => 2
  end
end
