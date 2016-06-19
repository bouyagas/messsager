require 'rails_helper'

RSpec.describe "signups/new", type: :view do
  before(:each) do
    assign(:signup, Signup.new(
      :name => "MyString",
      :email => "MyString",
      :password => "MyString"
    ))
  end

  it "renders new signup form" do
    render

    assert_select "form[action=?][method=?]", signups_path, "post" do

      assert_select "input#signup_name[name=?]", "signup[name]"

      assert_select "input#signup_email[name=?]", "signup[email]"

      assert_select "input#signup_password[name=?]", "signup[password]"
    end
  end
end
