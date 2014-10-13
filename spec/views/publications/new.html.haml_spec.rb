require 'rails_helper'

RSpec.describe "publications/new", :type => :view do
  before(:each) do
    assign(:publication, Publication.new(
      :title => "MyString",
      :url => "MyString",
      :appearance_url_template => "MyString",
      :details => "MyString",
      :year => "MyString"
    ))
  end

  it "renders new publication form" do
    render

    assert_select "form[action=?][method=?]", publications_path, "post" do

      assert_select "input#publication_title[name=?]", "publication[title]"

      assert_select "input#publication_url[name=?]", "publication[url]"

      assert_select "input#publication_appearance_url_template[name=?]", "publication[appearance_url_template]"

      assert_select "input#publication_details[name=?]", "publication[details]"

      assert_select "input#publication_year[name=?]", "publication[year]"
    end
  end
end
