require 'rails_helper'

RSpec.describe "stylesheets/new", :type => :view do
  before(:each) do
    assign(:stylesheet, Stylesheet.new(
      :name => "MyString"
    ))
  end

  it "renders new stylesheet form" do
    render

    assert_select "form[action=?][method=?]", stylesheets_path, "post" do

      assert_select "input#stylesheet_name[name=?]", "stylesheet[name]"
    end
  end
end
