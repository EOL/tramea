require 'rails_helper'

RSpec.describe "videos/show", :type => :view do
  before(:each) do
    @video = assign(:video, Video.create!(
      :guid => "Guid",
      :locale => 1,
      :title => "Title",
      :description => "MyText",
      :copyright => "Copyright",
      :license_id => 2,
      :original_url => "Original Url",
      :url => "Url",
      :javascript_id => 3,
      :stylesheet_id => 4
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
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
