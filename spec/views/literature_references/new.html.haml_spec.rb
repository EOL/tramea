require 'rails_helper'

RSpec.describe "literature_references/new", :type => :view do
  before(:each) do
    assign(:literature_reference, LiteratureReference.new(
      :parent_type => "MyString",
      :parent_id => 1,
      :string => "MyString"
    ))
  end

  it "renders new literature_reference form" do
    render

    assert_select "form[action=?][method=?]", literature_references_path, "post" do

      assert_select "input#literature_reference_parent_type[name=?]", "literature_reference[parent_type]"

      assert_select "input#literature_reference_parent_id[name=?]", "literature_reference[parent_id]"

      assert_select "input#literature_reference_string[name=?]", "literature_reference[string]"
    end
  end
end
