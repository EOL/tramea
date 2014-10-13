require 'rails_helper'

RSpec.describe "translations/index", :type => :view do
  before(:each) do
    assign(:translations, [
      Translation.create!(
        :of_medium_type => "Of Medium Type",
        :of_medium_id => 1,
        :to_medium_type => "To Medium Type",
        :to_medium_id => 2
      ),
      Translation.create!(
        :of_medium_type => "Of Medium Type",
        :of_medium_id => 1,
        :to_medium_type => "To Medium Type",
        :to_medium_id => 2
      )
    ])
  end

  it "renders a list of translations" do
    render
    assert_select "tr>td", :text => "Of Medium Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "To Medium Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
