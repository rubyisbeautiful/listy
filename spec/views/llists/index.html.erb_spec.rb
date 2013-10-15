require 'spec_helper'

describe "listy_lists/index" do
  before(:each) do
    assign(:llists, [
      stub_model(Llist),
      stub_model(Llist)
    ])
  end

  it "renders a list of listy_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
