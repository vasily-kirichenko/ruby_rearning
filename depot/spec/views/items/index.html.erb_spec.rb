require 'spec_helper'

describe "items/index.html.erb" do
  before(:each) do
    assign(:items, [
      stub_model(Item,
        :title => "Title"
      ),
      stub_model(Item,
        :title => "Title"
      )
    ])
  end

  it "renders a list of items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
