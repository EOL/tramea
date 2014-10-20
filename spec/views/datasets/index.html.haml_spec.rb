require 'rails_helper'

RSpec.describe "datasets/index", :type => :view do
  before(:each) do
    assign(:datasets, [
      Dataset.create!(
        :partner_id => 1,
        :name => "Name",
        :full_name => "Full Name",
        :abbr => "Abbr",
        :description => "MyText",
        :private_notes => "MyText",
        :admin_notes => "MyText",
        :url => "Url",
        :license_id => 2
      ),
      Dataset.create!(
        :partner_id => 1,
        :name => "Name",
        :full_name => "Full Name",
        :abbr => "Abbr",
        :description => "MyText",
        :private_notes => "MyText",
        :admin_notes => "MyText",
        :url => "Url",
        :license_id => 2
      )
    ])
  end

  it "renders a list of datasets" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Abbr".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
