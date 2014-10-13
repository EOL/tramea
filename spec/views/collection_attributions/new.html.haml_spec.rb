require 'rails_helper'

RSpec.describe "collection_attributions/new", :type => :view do
  before(:each) do
    assign(:collection_attribution, CollectionAttribution.new(
      :medium_type => 1,
      :medium_id => 1,
      :who => "MyString",
      :url => "MyString",
      :role_id => 1
    ))
  end

  it "renders new collection_attribution form" do
    render

    assert_select "form[action=?][method=?]", collection_attributions_path, "post" do

      assert_select "input#collection_attribution_medium_type[name=?]", "collection_attribution[medium_type]"

      assert_select "input#collection_attribution_medium_id[name=?]", "collection_attribution[medium_id]"

      assert_select "input#collection_attribution_who[name=?]", "collection_attribution[who]"

      assert_select "input#collection_attribution_url[name=?]", "collection_attribution[url]"

      assert_select "input#collection_attribution_role_id[name=?]", "collection_attribution[role_id]"
    end
  end
end
