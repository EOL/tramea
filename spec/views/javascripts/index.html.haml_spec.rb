require 'rails_helper'

RSpec.describe "javascripts/index", :type => :view do
  before(:each) do
    assign(:javascripts, [
      Javascript.create!(
        :name => "Name"
      ),
      Javascript.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of javascripts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
