require 'rails_helper'

RSpec.describe "attributions/new", :type => :view do
  before(:each) do
    assign(:attribution, Attribution.new(
      :medium_type => 1,
      :medium_id => 1,
      :who => "MyString",
      :url => "MyString",
      :role_id => 1
    ))
  end

  it "renders new attribution form" do
    render

    assert_select "form[action=?][method=?]", attributions_path, "post" do

      assert_select "input#attribution_medium_type[name=?]", "attribution[medium_type]"

      assert_select "input#attribution_medium_id[name=?]", "attribution[medium_id]"

      assert_select "input#attribution_who[name=?]", "attribution[who]"

      assert_select "input#attribution_url[name=?]", "attribution[url]"

      assert_select "input#attribution_role_id[name=?]", "attribution[role_id]"
    end
  end
end
