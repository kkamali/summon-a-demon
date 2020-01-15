class Sacrifice < ActiveRecord::Base
  belongs_to :summon
  belongs_to :demon
end
