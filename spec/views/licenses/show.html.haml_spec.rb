require 'rails_helper'

RSpec.describe "licenses/show", :type => :view do
  before(:each) do
    @license = assign(:license, License.create!(
      :type => 1,
      :icon => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
