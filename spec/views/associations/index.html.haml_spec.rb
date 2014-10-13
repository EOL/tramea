require 'rails_helper'

RSpec.describe "associations/index", :type => :view do
  before(:each) do
    assign(:associations, [
      Association.create!(
        :parent_type => "Parent Type",
        :parent_id => 1,
        :child_type => "Child Type",
        :child_id => 2,
        :trusted => false,
        :reviewed => false,
        :visible => false,
        :overview => false,
        :position => 3,
        :rating => 1.5,
        :num_ratings => 4
      ),
      Association.create!(
        :parent_type => "Parent Type",
        :parent_id => 1,
        :child_type => "Child Type",
        :child_id => 2,
        :trusted => false,
        :reviewed => false,
        :visible => false,
        :overview => false,
        :position => 3,
        :rating => 1.5,
        :num_ratings => 4
      )
    ])
  end

  it "renders a list of associations" do
    render
    assert_select "tr>td", :text => "Parent Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Child Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
