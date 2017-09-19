def nyc_pigeon_organizer(data)
  # write your code here!
  require "pry"
  new_hash ={}
  data.each do |attrib, vals|
    vals.each do |val, mems|
      mems.each do |name|
        new_hash[name] = {} if !new_hash.keys.include?(name)
        new_hash[name][attrib] = [] if !new_hash[name].keys.include?(attrib)
        new_hash[name][attrib] << val.to_s
      end
    end
  end
  new_hash
end
