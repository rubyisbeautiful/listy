require 'spec_helper'

describe "llists/edit" do
  before(:each) do
    @llist = assign(:llist, stub_model(Llist))
  end

  it "renders the edit listy_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", llist_path(@llist), "post" do
    end
  end
end
