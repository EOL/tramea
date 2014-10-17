require 'rails_helper'

RSpec.describe "partners/show", :type => :view do
  before(:each) do
    @partner = assign(:partner, Partner.create!(
      :name => "Name",
      :full_name => "Full Name",
      :abbr => "Abbr",
      :description => "MyText",
      :private_notes => "MyText",
      :admin_notes => "MyText",
      :icon => "",
      :url => "Url",
      :small_icon_url => "Small Icon Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Full Name/)
    expect(rendered).to match(/Abbr/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Small Icon Url/)
  end
end
