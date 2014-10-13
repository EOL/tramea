require 'rails_helper'

RSpec.describe "collection_attributions/show", :type => :view do
  before(:each) do
    @collection_attribution = assign(:collection_attribution, CollectionAttribution.create!(
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
