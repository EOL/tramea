require 'rails_helper'

RSpec.describe "attributions/edit", :type => :view do
  before(:each) do
    @attribution = assign(:attribution, Attribution.create!(
      :medium_type => 1,
      :medium_id => 1,
      :who => "MyString",
      :url => "MyString",
      :role_id => 1
    ))
  end

  it "renders the edit attribution form" do
    render

    assert_select "form[action=?][method=?]", attribution_path(@attribution), "post" do

      assert_select "input#attribution_medium_type[name=?]", "attribution[medium_type]"

      assert_select "input#attribution_medium_id[name=?]", "attribution[medium_id]"

      assert_select "input#attribution_who[name=?]", "attribution[who]"

      assert_select "input#attribution_url[name=?]", "attribution[url]"

      assert_select "input#attribution_role_id[name=?]", "attribution[role_id]"
    end
  end
end
