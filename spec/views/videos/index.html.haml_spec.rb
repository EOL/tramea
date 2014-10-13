require 'rails_helper'

RSpec.describe "videos/index", :type => :view do
  before(:each) do
    assign(:videos, [
      Video.create!(
        :guid => "Guid",
        :locale => 1,
        :preview => false,
        :title => "Title",
        :description => "MyText",
        :copyright => "Copyright",
        :license_id => 2,
        :original_url => "Original Url",
        :url => "Url",
        :javascript_id => 3,
        :stylesheet_id => 4
      ),
      Video.create!(
        :guid => "Guid",
        :locale => 1,
        :preview => false,
        :title => "Title",
        :description => "MyText",
        :copyright => "Copyright",
        :license_id => 2,
        :original_url => "Original Url",
        :url => "Url",
        :javascript_id => 3,
        :stylesheet_id => 4
      )
    ])
  end

  it "renders a list of videos" do
    render
    assert_select "tr>td", :text => "Guid".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Copyright".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Original Url".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
