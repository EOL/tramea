require 'rails_helper'

RSpec.describe "appearances/new", :type => :view do
  before(:each) do
    assign(:appearance, Appearance.new(
      :name_id => 1,
      :publication_id => 1,
      :page => "MyString",
      :url_snippet => "MyString"
    ))
  end

  it "renders new appearance form" do
    render

    assert_select "form[action=?][method=?]", appearances_path, "post" do

      assert_select "input#appearance_name_id[name=?]", "appearance[name_id]"

      assert_select "input#appearance_publication_id[name=?]", "appearance[publication_id]"

      assert_select "input#appearance_page[name=?]", "appearance[page]"

      assert_select "input#appearance_url_snippet[name=?]", "appearance[url_snippet]"
    end
  end
end
