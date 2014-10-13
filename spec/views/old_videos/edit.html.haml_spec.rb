require 'rails_helper'

RSpec.describe "old_videos/edit", :type => :view do
  before(:each) do
    @old_video = assign(:old_video, OldVideo.create!(
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
      :video_id => 1
    ))
  end

  it "renders the edit old_video form" do
    render

    assert_select "form[action=?][method=?]", old_video_path(@old_video), "post" do

      assert_select "input#old_video_guid[name=?]", "old_video[guid]"

      assert_select "input#old_video_locale[name=?]", "old_video[locale]"

      assert_select "input#old_video_preview[name=?]", "old_video[preview]"

      assert_select "input#old_video_title[name=?]", "old_video[title]"

      assert_select "textarea#old_video_description[name=?]", "old_video[description]"

      assert_select "input#old_video_copyright[name=?]", "old_video[copyright]"

      assert_select "input#old_video_license_id[name=?]", "old_video[license_id]"

      assert_select "input#old_video_original_url[name=?]", "old_video[original_url]"

      assert_select "input#old_video_url[name=?]", "old_video[url]"

      assert_select "input#old_video_javascript_id[name=?]", "old_video[javascript_id]"

      assert_select "input#old_video_stylesheet_id[name=?]", "old_video[stylesheet_id]"

      assert_select "input#old_video_video_id[name=?]", "old_video[video_id]"
    end
  end
end
