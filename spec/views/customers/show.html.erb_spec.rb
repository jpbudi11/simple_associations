require 'spec_helper'

describe "customers/show" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :company_name => "Company Name",
      :phone => "Phone",
      :contanct_name => "Contanct Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company Name/)
    rendered.should match(/Phone/)
    rendered.should match(/Contanct Name/)
  end
end
