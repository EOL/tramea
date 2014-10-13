require 'rails_helper'

RSpec.describe "javascripts/new", :type => :view do
  before(:each) do
    assign(:javascript, Javascript.new(
      :name => "MyString"
    ))
  end

  it "renders new javascript form" do
    render

    assert_select "form[action=?][method=?]", javascripts_path, "post" do

      assert_select "input#javascript_name[name=?]", "javascript[name]"
    end
  end
end
