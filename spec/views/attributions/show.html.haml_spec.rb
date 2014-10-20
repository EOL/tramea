require 'rails_helper'

RSpec.describe "attributions/show", :type => :view do
  before(:each) do
    @attribution = assign(:attribution, Attribution.create!(
      :medium_type => 1,
      :medium_id => 2,
      :who => "Who",
      :url => "Url",
      :role_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Who/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/3/)
  end
end
