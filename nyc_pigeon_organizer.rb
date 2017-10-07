def nyc_pigeon_organizer(data)
  pigeon_list = {}
  name_holder = []
  data[:gender].each do |gen, names|
    names.each do |name|
      name_holder.push(name)
    end
  end
  name_holder.each do |name|
    pigeon_list[name] = {}
  end

  data.each do |cat, subcat|
    pigeon_list.each do |name, hash|
    pigeon_list[name][cat] = []
    subcat.each do |type, pigeons|
      if pigeons.include?(name)
        pigeon_list[name][cat].push(type.to_s)
      end
    end
  end
end
    pigeon_list

end
