require 'rails_helper'

RSpec.describe "maps/new", :type => :view do
  before(:each) do
    assign(:map, Map.new(
      :guid => "MyString",
      :locale => 1,
      :title => "MyString",
      :description => "MyText",
      :copyright => "MyString",
      :license_id => 1,
      :original_url => "MyString",
      :full_size_url => "MyString",
      :crop_url => "MyString",
      :thumbnail_url => "MyString",
      :javascript_id => 1,
      :stylesheet_id => 1
    ))
  end

  it "renders new map form" do
    render

    assert_select "form[action=?][method=?]", maps_path, "post" do

      assert_select "input#map_guid[name=?]", "map[guid]"

      assert_select "input#map_locale[name=?]", "map[locale]"

      assert_select "input#map_title[name=?]", "map[title]"

      assert_select "textarea#map_description[name=?]", "map[description]"

      assert_select "input#map_copyright[name=?]", "map[copyright]"

      assert_select "input#map_license_id[name=?]", "map[license_id]"

      assert_select "input#map_original_url[name=?]", "map[original_url]"

      assert_select "input#map_full_size_url[name=?]", "map[full_size_url]"

      assert_select "input#map_crop_url[name=?]", "map[crop_url]"

      assert_select "input#map_thumbnail_url[name=?]", "map[thumbnail_url]"

      assert_select "input#map_javascript_id[name=?]", "map[javascript_id]"

      assert_select "input#map_stylesheet_id[name=?]", "map[stylesheet_id]"
    end
  end
end
