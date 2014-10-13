require 'rails_helper'

RSpec.describe "stylesheets/show", :type => :view do
  before(:each) do
    @stylesheet = assign(:stylesheet, Stylesheet.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
