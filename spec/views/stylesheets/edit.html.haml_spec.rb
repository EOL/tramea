require 'rails_helper'

RSpec.describe "stylesheets/edit", :type => :view do
  before(:each) do
    @stylesheet = assign(:stylesheet, Stylesheet.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit stylesheet form" do
    render

    assert_select "form[action=?][method=?]", stylesheet_path(@stylesheet), "post" do

      assert_select "input#stylesheet_name[name=?]", "stylesheet[name]"
    end
  end
end
