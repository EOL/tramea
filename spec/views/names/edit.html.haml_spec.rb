require 'rails_helper'

RSpec.describe "names/edit", :type => :view do
  before(:each) do
    @name = assign(:name, Name.create!(
      :string => "MyString",
      :type => 1,
      :locale => 1
    ))
  end

  it "renders the edit name form" do
    render

    assert_select "form[action=?][method=?]", name_path(@name), "post" do
      assert_select "input#name_string[name=?]", "name[string]"

      assert_select "input#name_type[name=?]", "name[type]"

      assert_select "input#name_locale[name=?]", "name[locale]"
    end
  end
end
