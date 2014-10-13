require 'rails_helper'

RSpec.describe "synths/show", :type => :view do
  before(:each) do
    @synth = assign(:synth, Synth.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
