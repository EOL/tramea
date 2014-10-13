require 'rails_helper'

RSpec.describe "uris/index", :type => :view do
  before(:each) do
    assign(:uris, [
      Uri.create!(
        :string => "String",
        :locale => 1,
        :position => 2
      ),
      Uri.create!(
        :string => "String",
        :locale => 1,
        :position => 2
      )
    ])
  end

  it "renders a list of uris" do
    render
    assert_select "tr>td", :text => "String".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
