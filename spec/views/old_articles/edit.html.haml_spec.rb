require 'rails_helper'

RSpec.describe "old_articles/edit", :type => :view do
  before(:each) do
    @old_article = assign(:old_article, OldArticle.create!(
      :guid => "MyString",
      :locale => 1,
      :preview => false,
      :section_id => 1,
      :title => "MyString",
      :body => "MyText",
      :copyright => "MyString",
      :license_id => 1,
      :original_url => "MyString",
      :javascript_id => 1,
      :stylesheet_id => 1,
      :article_id => 1
    ))
  end

  it "renders the edit old_article form" do
    render

    assert_select "form[action=?][method=?]", old_article_path(@old_article), "post" do

      assert_select "input#old_article_guid[name=?]", "old_article[guid]"

      assert_select "input#old_article_locale[name=?]", "old_article[locale]"

      assert_select "input#old_article_preview[name=?]", "old_article[preview]"

      assert_select "input#old_article_section_id[name=?]", "old_article[section_id]"

      assert_select "input#old_article_title[name=?]", "old_article[title]"

      assert_select "textarea#old_article_body[name=?]", "old_article[body]"

      assert_select "input#old_article_copyright[name=?]", "old_article[copyright]"

      assert_select "input#old_article_license_id[name=?]", "old_article[license_id]"

      assert_select "input#old_article_original_url[name=?]", "old_article[original_url]"

      assert_select "input#old_article_javascript_id[name=?]", "old_article[javascript_id]"

      assert_select "input#old_article_stylesheet_id[name=?]", "old_article[stylesheet_id]"

      assert_select "input#old_article_article_id[name=?]", "old_article[article_id]"
    end
  end
end
