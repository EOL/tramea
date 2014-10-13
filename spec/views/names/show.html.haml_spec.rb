require 'rails_helper'

RSpec.describe "names/show", :type => :view do
  before(:each) do
    @name = assign(:name, Name.create!(
      :string => "String",
      :type => 1,
      :locale => 2,
      :preview => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/String/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
  end
end
