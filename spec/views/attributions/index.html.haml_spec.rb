require 'rails_helper'

RSpec.describe "attributions/index", :type => :view do
  before(:each) do
    assign(:attributions, [
      Attribution.create!(
        :medium_type => 1,
        :medium_id => 2,
        :who => "Who",
        :url => "Url",
        :role_id => 3
      ),
      Attribution.create!(
        :medium_type => 1,
        :medium_id => 2,
        :who => "Who",
        :url => "Url",
        :role_id => 3
      )
    ])
  end

  it "renders a list of attributions" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Who".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
