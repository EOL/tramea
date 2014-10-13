require 'rails_helper'

RSpec.describe "old_images/new", :type => :view do
  before(:each) do
    assign(:old_image, OldImage.new(
      :guid => "MyString",
      :locale => 1,
      :preview => false,
      :title => "MyString",
      :description => "MyText",
      :copyright => "MyString",
      :string => "MyString",
      :license_id => 1,
      :original_url => "MyString",
      :full_size_url => "MyString",
      :crop_url => "MyString",
      :thumbnail_url => "MyString",
      :image_id => 1
    ))
  end

  it "renders new old_image form" do
    render

    assert_select "form[action=?][method=?]", old_images_path, "post" do

      assert_select "input#old_image_guid[name=?]", "old_image[guid]"

      assert_select "input#old_image_locale[name=?]", "old_image[locale]"

      assert_select "input#old_image_preview[name=?]", "old_image[preview]"

      assert_select "input#old_image_title[name=?]", "old_image[title]"

      assert_select "textarea#old_image_description[name=?]", "old_image[description]"

      assert_select "input#old_image_copyright[name=?]", "old_image[copyright]"

      assert_select "input#old_image_string[name=?]", "old_image[string]"

      assert_select "input#old_image_license_id[name=?]", "old_image[license_id]"

      assert_select "input#old_image_original_url[name=?]", "old_image[original_url]"

      assert_select "input#old_image_full_size_url[name=?]", "old_image[full_size_url]"

      assert_select "input#old_image_crop_url[name=?]", "old_image[crop_url]"

      assert_select "input#old_image_thumbnail_url[name=?]", "old_image[thumbnail_url]"

      assert_select "input#old_image_image_id[name=?]", "old_image[image_id]"
    end
  end
end
