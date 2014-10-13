require 'rails_helper'

RSpec.describe "synths/edit", :type => :view do
  before(:each) do
    @synth = assign(:synth, Synth.create!())
  end

  it "renders the edit synth form" do
    render

    assert_select "form[action=?][method=?]", synth_path(@synth), "post" do
    end
  end
end
