  require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  person_hash = {}
  data.each do |attribute, data_list|
    data_list.each do |key, value|
      value.each do |name|
        if !person_hash[name]
          person_hash[name] = {}
        end
        if person_hash[name][attribute].nil?
          person_hash[name][attribute] = []
        end
        person_hash[name][attribute] << key.to_s
      end
    end
  end
  person_hash
end
