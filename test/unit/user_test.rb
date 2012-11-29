require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "SystemStackError when using accepts_nested_attributes and inverse_of" do
    user = User.new
    address1 = Address.new
    address2 = Address.new

    user.addresses << address1
    user.addresses << address2
    user.save
  end
end
