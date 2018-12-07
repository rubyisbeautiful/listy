require 'spec_helper'

describe "llists/index" do
  before(:each) do
    assign(:llists, [
      stub_model(Llist),
      stub_model(Llist)
    ])
  end

  xit "renders a list of listy_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
