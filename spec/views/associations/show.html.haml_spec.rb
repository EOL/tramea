require 'rails_helper'

RSpec.describe "associations/show", :type => :view do
  before(:each) do
    @association = assign(:association, Association.create!(
      :parent_type => "Parent Type",
      :parent_id => 1,
      :child_type => "Child Type",
      :child_id => 2,
      :trusted => false,
      :reviewed => false,
      :visible => false,
      :overview => false,
      :position => 3,
      :rating => 1.5,
      :num_ratings => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Parent Type/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Child Type/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/4/)
  end
end
