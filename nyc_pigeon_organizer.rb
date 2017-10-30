require 'pry'

def nyc_pigeon_organizer(data)
  new_array = []
  pidgeon_data = {}
  data.each do |key1, value1|
    value1.each do |key2, names_array|
      names_array.each do |name|
        if pidgeon_data[name] == nil
          pidgeon_data[name] = {}
          pidgeon_data[name][key1] = [key2.to_s]
        else
          if pidgeon_data[name][key1] == nil
            pidgeon_data[name][key1] = [key2.to_s]
          else
            pidgeon_data[name][key1] << key2.to_s
          end
        end
      end
    end
  end
  # binding.pry
  pidgeon_data
end
