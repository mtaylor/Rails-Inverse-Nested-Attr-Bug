require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "Everything works fine when setting only 1 associated object" do
    user = User.new
    address1 = Address.new

    user.addresses << address1
    user.save
  end

  test "SystemStackError when using accepts_nested_attributes and inverse_of when setting >1 association object" do
    user = User.new
    address1 = Address.new
    address2 = Address.new

    user.addresses << address1
    user.addresses << address2
    user.save
  end
end
