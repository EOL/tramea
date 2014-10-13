require 'rails_helper'

RSpec.describe "secions/show", :type => :view do
  before(:each) do
    @secion = assign(:secion, Secion.create!(
      :type => 1,
      :position => 2,
      :parent_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
