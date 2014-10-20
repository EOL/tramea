require 'rails_helper'

RSpec.describe "datasets/edit", :type => :view do
  before(:each) do
    @dataset = assign(:dataset, Dataset.create!(
      :partner_id => 1,
      :name => "MyString",
      :full_name => "MyString",
      :abbr => "MyString",
      :description => "MyText",
      :private_notes => "MyText",
      :admin_notes => "MyText",
      :url => "MyString",
      :license_id => 1
    ))
  end

  it "renders the edit dataset form" do
    render

    assert_select "form[action=?][method=?]", dataset_path(@dataset), "post" do

      assert_select "input#dataset_partner_id[name=?]", "dataset[partner_id]"

      assert_select "input#dataset_name[name=?]", "dataset[name]"

      assert_select "input#dataset_full_name[name=?]", "dataset[full_name]"

      assert_select "input#dataset_abbr[name=?]", "dataset[abbr]"

      assert_select "textarea#dataset_description[name=?]", "dataset[description]"

      assert_select "textarea#dataset_private_notes[name=?]", "dataset[private_notes]"

      assert_select "textarea#dataset_admin_notes[name=?]", "dataset[admin_notes]"

      assert_select "input#dataset_url[name=?]", "dataset[url]"

      assert_select "input#dataset_license_id[name=?]", "dataset[license_id]"
    end
  end
end
