require 'rails_helper'

RSpec.describe "publications/edit", :type => :view do
  before(:each) do
    @publication = assign(:publication, Publication.create!(
      :title => "MyString",
      :url => "MyString",
      :appearance_url_template => "MyString",
      :details => "MyString",
      :year => "MyString"
    ))
  end

  it "renders the edit publication form" do
    render

    assert_select "form[action=?][method=?]", publication_path(@publication), "post" do

      assert_select "input#publication_title[name=?]", "publication[title]"

      assert_select "input#publication_url[name=?]", "publication[url]"

      assert_select "input#publication_appearance_url_template[name=?]", "publication[appearance_url_template]"

      assert_select "input#publication_details[name=?]", "publication[details]"

      assert_select "input#publication_year[name=?]", "publication[year]"
    end
  end
end
