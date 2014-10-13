require 'rails_helper'

RSpec.describe "old_maps/show", :type => :view do
  before(:each) do
    @old_map = assign(:old_map, OldMap.create!(
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
      :thumbnail_url => "Thumbnail Url",
      :javascript_id => 3,
      :stylesheet_id => 4,
      :map_id => 5
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
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
