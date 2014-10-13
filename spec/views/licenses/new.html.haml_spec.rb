require 'rails_helper'

RSpec.describe "licenses/new", :type => :view do
  before(:each) do
    assign(:license, License.new(
      :type => 1,
      :icon => ""
    ))
  end

  it "renders new license form" do
    render

    assert_select "form[action=?][method=?]", licenses_path, "post" do

      assert_select "input#license_type[name=?]", "license[type]"

      assert_select "input#license_icon[name=?]", "license[icon]"
    end
  end
end
