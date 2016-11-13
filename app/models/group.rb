class Group < ApplicationRecord
  has_many :group_memberships, :class_name => 'GroupMembership'
  has_many :users, :through => :group_memberships

  geocoded_by :address
  after_validation :geocode
end
