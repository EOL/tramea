require 'rails_helper'

RSpec.describe "links/show", :type => :view do
  before(:each) do
    @link = assign(:link, Link.create!(
      :source_id => 1,
      :name => "Name",
      :url => "Url",
      :position => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/2/)
  end
end
