require 'rails_helper'

RSpec.describe "associations/new", :type => :view do
  before(:each) do
    assign(:association, Association.new(
      :parent_type => "MyString",
      :parent_id => 1,
      :child_type => "MyString",
      :child_id => 1,
      :trusted => false,
      :reviewed => false,
      :visible => false,
      :overview => false,
      :position => 1,
      :rating => 1.5,
      :num_ratings => 1
    ))
  end

  it "renders new association form" do
    render

    assert_select "form[action=?][method=?]", associations_path, "post" do

      assert_select "input#association_parent_type[name=?]", "association[parent_type]"

      assert_select "input#association_parent_id[name=?]", "association[parent_id]"

      assert_select "input#association_child_type[name=?]", "association[child_type]"

      assert_select "input#association_child_id[name=?]", "association[child_id]"

      assert_select "input#association_trusted[name=?]", "association[trusted]"

      assert_select "input#association_reviewed[name=?]", "association[reviewed]"

      assert_select "input#association_visible[name=?]", "association[visible]"

      assert_select "input#association_overview[name=?]", "association[overview]"

      assert_select "input#association_position[name=?]", "association[position]"

      assert_select "input#association_rating[name=?]", "association[rating]"

      assert_select "input#association_num_ratings[name=?]", "association[num_ratings]"
    end
  end
end
