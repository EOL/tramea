require 'rails_helper'

RSpec.describe "sources/edit", :type => :view do
  before(:each) do
    @source = assign(:source, Source.create!(
      :name => "MyString",
      :full_name => "MyString",
      :abbr => "MyString",
      :description => "MyText",
      :private_notes => "MyText",
      :admin_notes => "MyText",
      :icon => "",
      :url => "MyString",
      :small_icon_url => "MyString"
    ))
  end

  it "renders the edit source form" do
    render

    assert_select "form[action=?][method=?]", source_path(@source), "post" do

      assert_select "input#source_name[name=?]", "source[name]"

      assert_select "input#source_full_name[name=?]", "source[full_name]"

      assert_select "input#source_abbr[name=?]", "source[abbr]"

      assert_select "textarea#source_description[name=?]", "source[description]"

      assert_select "textarea#source_private_notes[name=?]", "source[private_notes]"

      assert_select "textarea#source_admin_notes[name=?]", "source[admin_notes]"

      assert_select "input#source_icon[name=?]", "source[icon]"

      assert_select "input#source_url[name=?]", "source[url]"

      assert_select "input#source_small_icon_url[name=?]", "source[small_icon_url]"
    end
  end
end
