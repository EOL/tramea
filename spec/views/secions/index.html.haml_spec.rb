require 'rails_helper'

RSpec.describe "secions/index", :type => :view do
  before(:each) do
    assign(:secions, [
      Secion.create!(
        :type => 1,
        :position => 2,
        :parent_id => 3
      ),
      Secion.create!(
        :type => 1,
        :position => 2,
        :parent_id => 3
      )
    ])
  end

  it "renders a list of secions" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
