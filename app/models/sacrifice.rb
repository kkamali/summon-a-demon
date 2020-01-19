class Sacrifice < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :demon
  has_many :summons
end
