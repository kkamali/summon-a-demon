require 'pry'
module SummonsHelper
  def summon_fields(summon)
    if !summon[:demon_id].nil?
      hidden_field_tag 'demon_id', "#{summon.demon_id}"
    else
      collection_select(:summon, :demon_id, Demon.all, :id, :name)
    end
  end
end