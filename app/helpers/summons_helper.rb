require 'pry'
module SummonsHelper
  def summon_fields(summon)
    if !summon[:demon_id].nil?
      hidden_field(:summon, :demon_id, value: summon.demon_id)
    else
      collection_select(:summon, :demon_id, Demon.all, :id, :name)
    end
  end
end