class Address < ActiveRecord::Base
  belongs_to :user, :inverse_of => :addresses
  accepts_nested_attributes_for :user
end