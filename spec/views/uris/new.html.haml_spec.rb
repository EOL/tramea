require 'rails_helper'

RSpec.describe "uris/new", :type => :view do
  before(:each) do
    assign(:uri, Uri.new(
      :string => "MyString",
      :locale => 1,
      :position => 1
    ))
  end

  it "renders new uri form" do
    render

    assert_select "form[action=?][method=?]", uris_path, "post" do

      assert_select "input#uri_string[name=?]", "uri[string]"

      assert_select "input#uri_locale[name=?]", "uri[locale]"

      assert_select "input#uri_position[name=?]", "uri[position]"
    end
  end
end
