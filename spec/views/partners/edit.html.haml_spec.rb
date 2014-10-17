require 'rails_helper'

RSpec.describe "partners/edit", :type => :view do
  before(:each) do
    @partner = assign(:partner, Partner.create!(
      :name => "MyString",
      :full_name => "MyString",
      :abbr => "MyString",
      :description => "MyText",
      :private_notes => "MyText",
      :admin_notes => "MyText",
      :icon => "",
      :url => "MyString",
      :small_icon_url => "MyString"
    ))
  end

  it "renders the edit partner form" do
    render

    assert_select "form[action=?][method=?]", partner_path(@partner), "post" do

      assert_select "input#partner_name[name=?]", "partner[name]"

      assert_select "input#partner_full_name[name=?]", "partner[full_name]"

      assert_select "input#partner_abbr[name=?]", "partner[abbr]"

      assert_select "textarea#partner_description[name=?]", "partner[description]"

      assert_select "textarea#partner_private_notes[name=?]", "partner[private_notes]"

      assert_select "textarea#partner_admin_notes[name=?]", "partner[admin_notes]"

      assert_select "input#partner_icon[name=?]", "partner[icon]"

      assert_select "input#partner_url[name=?]", "partner[url]"

      assert_select "input#partner_small_icon_url[name=?]", "partner[small_icon_url]"
    end
  end
end
