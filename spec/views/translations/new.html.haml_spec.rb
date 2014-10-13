require 'rails_helper'

RSpec.describe "translations/new", :type => :view do
  before(:each) do
    assign(:translation, Translation.new(
      :of_medium_type => "MyString",
      :of_medium_id => 1,
      :to_medium_type => "MyString",
      :to_medium_id => 1
    ))
  end

  it "renders new translation form" do
    render

    assert_select "form[action=?][method=?]", translations_path, "post" do

      assert_select "input#translation_of_medium_type[name=?]", "translation[of_medium_type]"

      assert_select "input#translation_of_medium_id[name=?]", "translation[of_medium_id]"

      assert_select "input#translation_to_medium_type[name=?]", "translation[to_medium_type]"

      assert_select "input#translation_to_medium_id[name=?]", "translation[to_medium_id]"
    end
  end
end
