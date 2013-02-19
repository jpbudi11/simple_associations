require 'spec_helper'

describe "orders/new" do
  before(:each) do
    assign(:order, stub_model(Order,
      :quantity => 1,
      :item_name => "MyString",
      :total_cost => ""
    ).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path, :method => "post" do
      assert_select "input#order_quantity", :name => "order[quantity]"
      assert_select "input#order_item_name", :name => "order[item_name]"
      assert_select "input#order_total_cost", :name => "order[total_cost]"
    end
  end
end
