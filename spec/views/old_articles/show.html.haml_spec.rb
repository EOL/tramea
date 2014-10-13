require 'rails_helper'

RSpec.describe "old_articles/show", :type => :view do
  before(:each) do
    @old_article = assign(:old_article, OldArticle.create!(
      :guid => "Guid",
      :locale => 1,
      :preview => false,
      :section_id => 2,
      :title => "Title",
      :body => "MyText",
      :copyright => "Copyright",
      :license_id => 3,
      :original_url => "Original Url",
      :javascript_id => 4,
      :stylesheet_id => 5,
      :article_id => 6
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Guid/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Copyright/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Original Url/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
  end
end
