require 'rails_helper'

RSpec.describe "publications/index", :type => :view do
  before(:each) do
    assign(:publications, [
      Publication.create!(
        :title => "Title",
        :url => "Url",
        :appearance_url_template => "Appearance Url Template",
        :details => "Details",
        :year => "Year"
      ),
      Publication.create!(
        :title => "Title",
        :url => "Url",
        :appearance_url_template => "Appearance Url Template",
        :details => "Details",
        :year => "Year"
      )
    ])
  end

  it "renders a list of publications" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Appearance Url Template".to_s, :count => 2
    assert_select "tr>td", :text => "Details".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
  end
end
