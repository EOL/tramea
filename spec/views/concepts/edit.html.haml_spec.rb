require 'rails_helper'

RSpec.describe "concepts/edit", :type => :view do
  before(:each) do
    @concept = assign(:concept, Concept.create!(
      :source_id => 1,
      :parent_id => 1,
      :original_id => "MyString"
    ))
  end

  it "renders the edit concept form" do
    render

    assert_select "form[action=?][method=?]", concept_path(@concept), "post" do

      assert_select "input#concept_source_id[name=?]", "concept[source_id]"

      assert_select "input#concept_parent_id[name=?]", "concept[parent_id]"

      assert_select "input#concept_original_id[name=?]", "concept[original_id]"
    end
  end
end
