require 'rails_helper'

RSpec.describe "publications/show", :type => :view do
  before(:each) do
    @publication = assign(:publication, Publication.create!(
      :title => "Title",
      :url => "Url",
      :appearance_url_template => "Appearance Url Template",
      :details => "Details",
      :year => "Year"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Appearance Url Template/)
    expect(rendered).to match(/Details/)
    expect(rendered).to match(/Year/)
  end
end
