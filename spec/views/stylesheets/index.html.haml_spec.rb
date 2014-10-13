require 'rails_helper'

RSpec.describe "stylesheets/index", :type => :view do
  before(:each) do
    assign(:stylesheets, [
      Stylesheet.create!(
        :name => "Name"
      ),
      Stylesheet.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of stylesheets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
