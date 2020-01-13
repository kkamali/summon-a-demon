class Summon < ActiveRecord::Base
  belongs_to :user
  belongs_to :demon
end
