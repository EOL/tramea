require 'rails_helper'

RSpec.describe "secions/edit", :type => :view do
  before(:each) do
    @secion = assign(:secion, Secion.create!(
      :type => 1,
      :position => 1,
      :parent_id => 1
    ))
  end

  it "renders the edit secion form" do
    render

    assert_select "form[action=?][method=?]", secion_path(@secion), "post" do

      assert_select "input#secion_type[name=?]", "secion[type]"

      assert_select "input#secion_position[name=?]", "secion[position]"

      assert_select "input#secion_parent_id[name=?]", "secion[parent_id]"
    end
  end
end
