require 'rails_helper'

RSpec.describe "appearances/show", :type => :view do
  before(:each) do
    @appearance = assign(:appearance, Appearance.create!(
      :name_id => 1,
      :publication_id => 2,
      :page => "Page",
      :url_snippet => "Url Snippet"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Page/)
    expect(rendered).to match(/Url Snippet/)
  end
end
