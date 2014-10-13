require 'rails_helper'

RSpec.describe "synths/index", :type => :view do
  before(:each) do
    assign(:synths, [
      Synth.create!(),
      Synth.create!()
    ])
  end

  it "renders a list of synths" do
    render
  end
end
