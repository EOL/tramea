require 'rails_helper'

RSpec.describe "old_sounds/show", :type => :view do
  before(:each) do
    @old_sound = assign(:old_sound, OldSound.create!(
      :guid => "Guid",
      :locale => 1,
      :preview => false,
      :title => "Title",
      :description => "MyText",
      :copyright => "Copyright",
      :license_id => 2,
      :original_url => "Original Url",
      :url => "Url",
      :javascript_id => 3,
      :stylesheet_id => 4,
      :sound_id => 5
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
    expect(rendered).to match(/5/)
  end
end
