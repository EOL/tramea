require 'rails_helper'

RSpec.describe "uris/show", :type => :view do
  before(:each) do
    @uri = assign(:uri, Uri.create!(
      :string => "String",
      :locale => 1,
      :position => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/String/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
