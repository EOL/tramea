require 'rails_helper'

RSpec.describe "videos/new", :type => :view do
  before(:each) do
    assign(:video, Video.new(
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

  it "renders new video form" do
    render

    assert_select "form[action=?][method=?]", videos_path, "post" do

      assert_select "input#video_guid[name=?]", "video[guid]"

      assert_select "input#video_locale[name=?]", "video[locale]"

      assert_select "input#video_title[name=?]", "video[title]"

      assert_select "textarea#video_description[name=?]", "video[description]"

      assert_select "input#video_copyright[name=?]", "video[copyright]"

      assert_select "input#video_license_id[name=?]", "video[license_id]"

      assert_select "input#video_original_url[name=?]", "video[original_url]"

      assert_select "input#video_url[name=?]", "video[url]"

      assert_select "input#video_javascript_id[name=?]", "video[javascript_id]"

      assert_select "input#video_stylesheet_id[name=?]", "video[stylesheet_id]"
    end
  end
end
