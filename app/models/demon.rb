class Demon < ActiveRecord::Base
  has_many :summons
  has_many :users, through: :summons
end
