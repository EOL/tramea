require 'rails_helper'

RSpec.describe "appearances/index", :type => :view do
  before(:each) do
    assign(:appearances, [
      Appearance.create!(
        :name_id => 1,
        :publication_id => 2,
        :page => "Page",
        :url_snippet => "Url Snippet"
      ),
      Appearance.create!(
        :name_id => 1,
        :publication_id => 2,
        :page => "Page",
        :url_snippet => "Url Snippet"
      )
    ])
  end

  it "renders a list of appearances" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Page".to_s, :count => 2
    assert_select "tr>td", :text => "Url Snippet".to_s, :count => 2
  end
end
