require 'rails_helper'

RSpec.describe "links/new", :type => :view do
  before(:each) do
    assign(:link, Link.new(
      :source_id => 1,
      :name => "MyString",
      :url => "MyString",
      :position => 1
    ))
  end

  it "renders new link form" do
    render

    assert_select "form[action=?][method=?]", links_path, "post" do

      assert_select "input#link_source_id[name=?]", "link[source_id]"

      assert_select "input#link_name[name=?]", "link[name]"

      assert_select "input#link_url[name=?]", "link[url]"

      assert_select "input#link_position[name=?]", "link[position]"
    end
  end
end
