class Sacrifice < ActiveRecord::Base
  belongs_to :demon
  has_many :summons
end
