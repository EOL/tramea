require 'rails_helper'

RSpec.describe "appearances/edit", :type => :view do
  before(:each) do
    @appearance = assign(:appearance, Appearance.create!(
      :name_id => 1,
      :publication_id => 1,
      :page => "MyString",
      :url_snippet => "MyString"
    ))
  end

  it "renders the edit appearance form" do
    render

    assert_select "form[action=?][method=?]", appearance_path(@appearance), "post" do

      assert_select "input#appearance_name_id[name=?]", "appearance[name_id]"

      assert_select "input#appearance_publication_id[name=?]", "appearance[publication_id]"

      assert_select "input#appearance_page[name=?]", "appearance[page]"

      assert_select "input#appearance_url_snippet[name=?]", "appearance[url_snippet]"
    end
  end
end
