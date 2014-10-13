require 'rails_helper'

RSpec.describe "images/show", :type => :view do
  before(:each) do
    @image = assign(:image, Image.create!(
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
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Original Url/)
    expect(rendered).to match(/Full Size Url/)
    expect(rendered).to match(/Crop Url/)
    expect(rendered).to match(/Thumbnail Url/)
  end
end
