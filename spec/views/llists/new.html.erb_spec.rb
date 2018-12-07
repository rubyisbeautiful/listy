require 'spec_helper'

describe "llists/new" do
  before(:each) do
    assign(:llist, stub_model(Llist).as_new_record)
  end

  it "renders new listy_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", llists_path, "post" do
    end
  end
end
