require 'rails_helper'

RSpec.describe "old_sounds/edit", :type => :view do
  before(:each) do
    @old_sound = assign(:old_sound, OldSound.create!(
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
      :stylesheet_id => 1,
      :sound_id => 1
    ))
  end

  it "renders the edit old_sound form" do
    render

    assert_select "form[action=?][method=?]", old_sound_path(@old_sound), "post" do

      assert_select "input#old_sound_guid[name=?]", "old_sound[guid]"

      assert_select "input#old_sound_locale[name=?]", "old_sound[locale]"

      assert_select "input#old_sound_preview[name=?]", "old_sound[preview]"

      assert_select "input#old_sound_title[name=?]", "old_sound[title]"

      assert_select "textarea#old_sound_description[name=?]", "old_sound[description]"

      assert_select "input#old_sound_copyright[name=?]", "old_sound[copyright]"

      assert_select "input#old_sound_license_id[name=?]", "old_sound[license_id]"

      assert_select "input#old_sound_original_url[name=?]", "old_sound[original_url]"

      assert_select "input#old_sound_url[name=?]", "old_sound[url]"

      assert_select "input#old_sound_javascript_id[name=?]", "old_sound[javascript_id]"

      assert_select "input#old_sound_stylesheet_id[name=?]", "old_sound[stylesheet_id]"

      assert_select "input#old_sound_sound_id[name=?]", "old_sound[sound_id]"
    end
  end
end
