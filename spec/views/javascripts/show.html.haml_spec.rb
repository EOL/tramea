require 'rails_helper'

RSpec.describe "javascripts/show", :type => :view do
  before(:each) do
    @javascript = assign(:javascript, Javascript.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
