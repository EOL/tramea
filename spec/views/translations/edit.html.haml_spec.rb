require 'rails_helper'

RSpec.describe "translations/edit", :type => :view do
  before(:each) do
    @translation = assign(:translation, Translation.create!(
      :of_medium_type => "MyString",
      :of_medium_id => 1,
      :to_medium_type => "MyString",
      :to_medium_id => 1
    ))
  end

  it "renders the edit translation form" do
    render

    assert_select "form[action=?][method=?]", translation_path(@translation), "post" do

      assert_select "input#translation_of_medium_type[name=?]", "translation[of_medium_type]"

      assert_select "input#translation_of_medium_id[name=?]", "translation[of_medium_id]"

      assert_select "input#translation_to_medium_type[name=?]", "translation[to_medium_type]"

      assert_select "input#translation_to_medium_id[name=?]", "translation[to_medium_id]"
    end
  end
end
