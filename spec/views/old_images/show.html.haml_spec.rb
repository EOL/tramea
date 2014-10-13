require 'rails_helper'

RSpec.describe "old_images/show", :type => :view do
  before(:each) do
    @old_image = assign(:old_image, OldImage.create!(
      :guid => "Guid",
      :locale => 1,
      :preview => false,
      :title => "Title",
      :description => "MyText",
      :copyright => "Copyright",
      :string => "String",
      :license_id => 2,
      :original_url => "Original Url",
      :full_size_url => "Full Size Url",
      :crop_url => "Crop Url",
      :thumbnail_url => "Thumbnail Url",
      :image_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Guid/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Copyright/)
    expect(rendered).to match(/String/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Original Url/)
    expect(rendered).to match(/Full Size Url/)
    expect(rendered).to match(/Crop Url/)
    expect(rendered).to match(/Thumbnail Url/)
    expect(rendered).to match(/3/)
  end
end
