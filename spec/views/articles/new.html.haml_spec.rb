require 'rails_helper'

RSpec.describe "articles/new", :type => :view do
  before(:each) do
    assign(:article, Article.new(
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
      :stylesheet_id => 1
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "input#article_guid[name=?]", "article[guid]"

      assert_select "input#article_locale[name=?]", "article[locale]"

      assert_select "input#article_preview[name=?]", "article[preview]"

      assert_select "input#article_section_id[name=?]", "article[section_id]"

      assert_select "input#article_title[name=?]", "article[title]"

      assert_select "textarea#article_body[name=?]", "article[body]"

      assert_select "input#article_copyright[name=?]", "article[copyright]"

      assert_select "input#article_license_id[name=?]", "article[license_id]"

      assert_select "input#article_original_url[name=?]", "article[original_url]"

      assert_select "input#article_javascript_id[name=?]", "article[javascript_id]"

      assert_select "input#article_stylesheet_id[name=?]", "article[stylesheet_id]"
    end
  end
end