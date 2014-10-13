require 'rails_helper'

RSpec.describe "names/index", :type => :view do
  before(:each) do
    assign(:names, [
      Name.create!(
        :string => "String",
        :type => 1,
        :locale => 2,
        :preview => false
      ),
      Name.create!(
        :string => "String",
        :type => 1,
        :locale => 2,
        :preview => false
      )
    ])
  end

  it "renders a list of names" do
    render
    assert_select "tr>td", :text => "String".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
