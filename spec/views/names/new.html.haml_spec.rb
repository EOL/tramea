require 'rails_helper'

RSpec.describe "names/new", :type => :view do
  before(:each) do
    assign(:name, Name.new(
      :string => "MyString",
      :type => 1,
      :locale => 1
    ))
  end

  it "renders new name form" do
    render

    assert_select "form[action=?][method=?]", names_path, "post" do

      assert_select "input#name_string[name=?]", "name[string]"

      assert_select "input#name_type[name=?]", "name[type]"

      assert_select "input#name_locale[name=?]", "name[locale]"
    end
  end
end
