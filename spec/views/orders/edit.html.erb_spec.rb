require 'spec_helper'

describe "orders/edit" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :quantity => 1,
      :item_name => "MyString",
      :total_cost => ""
    ))
  end

  it "renders the edit order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path(@order), :method => "post" do
      assert_select "input#order_quantity", :name => "order[quantity]"
      assert_select "input#order_item_name", :name => "order[item_name]"
      assert_select "input#order_total_cost", :name => "order[total_cost]"
    end
  end
end
