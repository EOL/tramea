require 'rails_helper'

RSpec.describe "datasets/show", :type => :view do
  before(:each) do
    @dataset = assign(:dataset, Dataset.create!(
      :partner_id => 1,
      :name => "Name",
      :full_name => "Full Name",
      :abbr => "Abbr",
      :description => "MyText",
      :private_notes => "MyText",
      :admin_notes => "MyText",
      :url => "Url",
      :license_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Full Name/)
    expect(rendered).to match(/Abbr/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/2/)
  end
end
