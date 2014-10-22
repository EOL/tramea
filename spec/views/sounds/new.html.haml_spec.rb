require 'rails_helper'

RSpec.describe "sounds/new", :type => :view do
  before(:each) do
    assign(:sound, Sound.new(
      :guid => "MyString",
      :locale => 1,
      :title => "MyString",
      :description => "MyText",
      :copyright => "MyString",
      :license_id => 1,
      :original_url => "MyString",
      :url => "MyString",
      :javascript_id => 1,
      :stylesheet_id => 1
    ))
  end

  it "renders new sound form" do
    render

    assert_select "form[action=?][method=?]", sounds_path, "post" do

      assert_select "input#sound_guid[name=?]", "sound[guid]"

      assert_select "input#sound_locale[name=?]", "sound[locale]"

      assert_select "input#sound_title[name=?]", "sound[title]"

      assert_select "textarea#sound_description[name=?]", "sound[description]"

      assert_select "input#sound_copyright[name=?]", "sound[copyright]"

      assert_select "input#sound_license_id[name=?]", "sound[license_id]"

      assert_select "input#sound_original_url[name=?]", "sound[original_url]"

      assert_select "input#sound_url[name=?]", "sound[url]"

      assert_select "input#sound_javascript_id[name=?]", "sound[javascript_id]"

      assert_select "input#sound_stylesheet_id[name=?]", "sound[stylesheet_id]"
    end
  end
end
