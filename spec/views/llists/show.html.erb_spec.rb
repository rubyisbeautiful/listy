require 'spec_helper'

describe "listy_lists/show" do
  before(:each) do
    @llist = assign(:llist, stub_model(Llist))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
