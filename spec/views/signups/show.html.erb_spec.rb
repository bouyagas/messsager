require 'rails_helper'

RSpec.describe "signups/show", type: :view do
  before(:each) do
    @signup = assign(:signup, Signup.create!(
      :name => "Name",
      :email => "Email",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password/)
  end
end
