require 'rails_helper'

RSpec.describe "literature_references/index", :type => :view do
  before(:each) do
    assign(:literature_references, [
      LiteratureReference.create!(
        :parent_type => "Parent Type",
        :parent_id => 1,
        :string => "String"
      ),
      LiteratureReference.create!(
        :parent_type => "Parent Type",
        :parent_id => 1,
        :string => "String"
      )
    ])
  end

  it "renders a list of literature_references" do
    render
    assert_select "tr>td", :text => "Parent Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
  end
end
