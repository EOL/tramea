require 'rails_helper'

RSpec.describe "synths/new", :type => :view do
  before(:each) do
    assign(:synth, Synth.new())
  end

  it "renders new synth form" do
    render

    assert_select "form[action=?][method=?]", synths_path, "post" do
    end
  end
end
