require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :quantity => 1,
        :item_name => "Item Name",
        :total_cost => ""
      ),
      stub_model(Order,
        :quantity => 1,
        :item_name => "Item Name",
        :total_cost => ""
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Item Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
