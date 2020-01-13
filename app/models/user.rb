class User < ActiveRecord::Base
  has_many :summons
  has_many :demons, through: :summons
end
