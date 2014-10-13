require 'rails_helper'

RSpec.describe "translations/show", :type => :view do
  before(:each) do
    @translation = assign(:translation, Translation.create!(
      :of_medium_type => "Of Medium Type",
      :of_medium_id => 1,
      :to_medium_type => "To Medium Type",
      :to_medium_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Of Medium Type/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/To Medium Type/)
    expect(rendered).to match(/2/)
  end
end
