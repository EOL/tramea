require 'rails_helper'

RSpec.describe "licenses/index", :type => :view do
  before(:each) do
    assign(:licenses, [
      License.create!(
        :type => 1,
        :icon => ""
      ),
      License.create!(
        :type => 1,
        :icon => ""
      )
    ])
  end

  it "renders a list of licenses" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
