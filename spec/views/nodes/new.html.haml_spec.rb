require 'rails_helper'

RSpec.describe "nodes/new", :type => :view do
  before(:each) do
    assign(:node, Node.new(
      :partner_id => 1,
      :parent_id => 1,
      :original_id => "MyString"
    ))
  end

  it "renders new node form" do
    render

    assert_select "form[action=?][method=?]", nodes_path, "post" do

      assert_select "input#node_partner_id[name=?]", "node[partner_id]"

      assert_select "input#node_parent_id[name=?]", "node[parent_id]"

      assert_select "input#node_original_id[name=?]", "node[original_id]"
    end
  end
end
