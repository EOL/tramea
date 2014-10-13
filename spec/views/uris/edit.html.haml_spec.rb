require 'rails_helper'

RSpec.describe "uris/edit", :type => :view do
  before(:each) do
    @uri = assign(:uri, Uri.create!(
      :string => "MyString",
      :locale => 1,
      :position => 1
    ))
  end

  it "renders the edit uri form" do
    render

    assert_select "form[action=?][method=?]", uri_path(@uri), "post" do

      assert_select "input#uri_string[name=?]", "uri[string]"

      assert_select "input#uri_locale[name=?]", "uri[locale]"

      assert_select "input#uri_position[name=?]", "uri[position]"
    end
  end
end
