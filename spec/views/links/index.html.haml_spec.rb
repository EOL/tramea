require 'rails_helper'

RSpec.describe "links/index", :type => :view do
  before(:each) do
    assign(:links, [
      Link.create!(
        :partner_id => 1,
        :name => "Name",
        :url => "Url",
        :position => 2
      ),
      Link.create!(
        :partner_id => 1,
        :name => "Name",
        :url => "Url",
        :position => 2
      )
    ])
  end

  it "renders a list of links" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
