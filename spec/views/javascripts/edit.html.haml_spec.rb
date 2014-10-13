require 'rails_helper'

RSpec.describe "javascripts/edit", :type => :view do
  before(:each) do
    @javascript = assign(:javascript, Javascript.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit javascript form" do
    render

    assert_select "form[action=?][method=?]", javascript_path(@javascript), "post" do

      assert_select "input#javascript_name[name=?]", "javascript[name]"
    end
  end
end
