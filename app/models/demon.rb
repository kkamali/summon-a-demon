class Demon < ActiveRecord::Base
  validates :name, presence: true
  has_many :summons
  has_many :users, through: :summons
  has_many :sacrifices
  accepts_nested_attributes_for :sacrifices
end
