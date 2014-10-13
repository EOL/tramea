require 'rails_helper'

RSpec.describe "old_maps/edit", :type => :view do
  before(:each) do
    @old_map = assign(:old_map, OldMap.create!(
      :guid => "MyString",
      :locale => 1,
      :preview => false,
      :title => "MyString",
      :description => "MyText",
      :copyright => "MyString",
      :license_id => 1,
      :original_url => "MyString",
      :full_size_url => "MyString",
      :crop_url => "MyString",
      :thumbnail_url => "MyString",
      :javascript_id => 1,
      :stylesheet_id => 1,
      :map_id => 1
    ))
  end

  it "renders the edit old_map form" do
    render

    assert_select "form[action=?][method=?]", old_map_path(@old_map), "post" do

      assert_select "input#old_map_guid[name=?]", "old_map[guid]"

      assert_select "input#old_map_locale[name=?]", "old_map[locale]"

      assert_select "input#old_map_preview[name=?]", "old_map[preview]"

      assert_select "input#old_map_title[name=?]", "old_map[title]"

      assert_select "textarea#old_map_description[name=?]", "old_map[description]"

      assert_select "input#old_map_copyright[name=?]", "old_map[copyright]"

      assert_select "input#old_map_license_id[name=?]", "old_map[license_id]"

      assert_select "input#old_map_original_url[name=?]", "old_map[original_url]"

      assert_select "input#old_map_full_size_url[name=?]", "old_map[full_size_url]"

      assert_select "input#old_map_crop_url[name=?]", "old_map[crop_url]"

      assert_select "input#old_map_thumbnail_url[name=?]", "old_map[thumbnail_url]"

      assert_select "input#old_map_javascript_id[name=?]", "old_map[javascript_id]"

      assert_select "input#old_map_stylesheet_id[name=?]", "old_map[stylesheet_id]"

      assert_select "input#old_map_map_id[name=?]", "old_map[map_id]"
    end
  end
end
