require 'rails_helper'

RSpec.describe "nodes/edit", :type => :view do
  before(:each) do
    @node = assign(:node, Node.create!(
      :partner_id => 1,
      :parent_id => 1,
      :original_id => "MyString"
    ))
  end

  it "renders the edit node form" do
    render

    assert_select "form[action=?][method=?]", node_path(@node), "post" do

      assert_select "input#node_partner_id[name=?]", "node[partner_id]"

      assert_select "input#node_parent_id[name=?]", "node[parent_id]"

      assert_select "input#node_original_id[name=?]", "node[original_id]"
    end
  end
end
