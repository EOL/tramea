require 'rails_helper'

RSpec.describe "images/edit", :type => :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      :guid => "MyString",
      :locale => 1,
      :title => "MyString",
      :description => "MyText",
      :copyright => "MyString",
      :license_id => 1,
      :original_url => "MyString",
      :full_size_url => "MyString",
      :crop_url => "MyString",
      :thumbnail_url => "MyString"
    ))
  end

  it "renders the edit image form" do
    render

    assert_select "form[action=?][method=?]", image_path(@image), "post" do

      assert_select "input#image_guid[name=?]", "image[guid]"

      assert_select "input#image_locale[name=?]", "image[locale]"

      assert_select "input#image_title[name=?]", "image[title]"

      assert_select "textarea#image_description[name=?]", "image[description]"

      assert_select "input#image_copyright[name=?]", "image[copyright]"

      assert_select "input#image_license_id[name=?]", "image[license_id]"

      assert_select "input#image_original_url[name=?]", "image[original_url]"

      assert_select "input#image_full_size_url[name=?]", "image[full_size_url]"

      assert_select "input#image_crop_url[name=?]", "image[crop_url]"

      assert_select "input#image_thumbnail_url[name=?]", "image[thumbnail_url]"
    end
  end
end
