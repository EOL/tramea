require 'rails_helper'

RSpec.describe "secions/new", :type => :view do
  before(:each) do
    assign(:secion, Secion.new(
      :type => 1,
      :position => 1,
      :parent_id => 1
    ))
  end

  it "renders new secion form" do
    render

    assert_select "form[action=?][method=?]", secions_path, "post" do

      assert_select "input#secion_type[name=?]", "secion[type]"

      assert_select "input#secion_position[name=?]", "secion[position]"

      assert_select "input#secion_parent_id[name=?]", "secion[parent_id]"
    end
  end
end
