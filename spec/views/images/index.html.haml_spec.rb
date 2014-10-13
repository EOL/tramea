require 'rails_helper'

RSpec.describe "images/index", :type => :view do
  before(:each) do
    assign(:images, [
      Image.create!(
        :guid => "Guid",
        :locale => 1,
        :preview => false,
        :title => "Title",
        :description => "MyText",
        :copyright => "Copyright",
        :license_id => 2,
        :original_url => "Original Url",
        :full_size_url => "Full Size Url",
        :crop_url => "Crop Url",
        :thumbnail_url => "Thumbnail Url"
      ),
      Image.create!(
        :guid => "Guid",
        :locale => 1,
        :preview => false,
        :title => "Title",
        :description => "MyText",
        :copyright => "Copyright",
        :license_id => 2,
        :original_url => "Original Url",
        :full_size_url => "Full Size Url",
        :crop_url => "Crop Url",
        :thumbnail_url => "Thumbnail Url"
      )
    ])
  end

  it "renders a list of images" do
    render
    assert_select "tr>td", :text => "Guid".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Copyright".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Original Url".to_s, :count => 2
    assert_select "tr>td", :text => "Full Size Url".to_s, :count => 2
    assert_select "tr>td", :text => "Crop Url".to_s, :count => 2
    assert_select "tr>td", :text => "Thumbnail Url".to_s, :count => 2
  end
end
