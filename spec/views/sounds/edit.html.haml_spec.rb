require 'rails_helper'

RSpec.describe "sounds/edit", :type => :view do
  before(:each) do
    @sound = assign(:sound, Sound.create!(
      :guid => "MyString",
      :locale => 1,
      :preview => false,
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

  it "renders the edit sound form" do
    render

    assert_select "form[action=?][method=?]", sound_path(@sound), "post" do

      assert_select "input#sound_guid[name=?]", "sound[guid]"

      assert_select "input#sound_locale[name=?]", "sound[locale]"

      assert_select "input#sound_preview[name=?]", "sound[preview]"

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
