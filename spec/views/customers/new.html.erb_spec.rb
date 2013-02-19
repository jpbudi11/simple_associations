require 'spec_helper'

describe "customers/new" do
  before(:each) do
    assign(:customer, stub_model(Customer,
      :company_name => "MyString",
      :phone => "MyString",
      :contanct_name => "MyString"
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customers_path, :method => "post" do
      assert_select "input#customer_company_name", :name => "customer[company_name]"
      assert_select "input#customer_phone", :name => "customer[phone]"
      assert_select "input#customer_contanct_name", :name => "customer[contanct_name]"
    end
  end
end
