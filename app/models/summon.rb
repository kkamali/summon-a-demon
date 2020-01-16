class Summon < ActiveRecord::Base
  belongs_to :user
  belongs_to :demon
  belongs_to :sacrifice

  def succeeded?
    if self.sacrifice.demon_id == self.demon_id
      self.update(successful: true)
    else
      self.update(successful: false)
    end
  end
end
