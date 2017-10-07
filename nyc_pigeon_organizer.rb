require 'pry'

def nyc_pigeon_organizer(data)
  pigeonhash = Hash.new
  namearr = []

  data.each do |category, data2|
    data2.each do |stat, pname|
        namearr << pname
    end
  end

  namearr = namearr.flatten
  namearr = namearr.uniq


  namearr.each do |x|
   pigeonhash["#{x}"] = {(data.keys[0])=>[],
     (data.keys[1])=>[],
   (data.keys[2])=>[]}
 end


 data.each do |category, data2|
   data2.each do |stat, pname|
     i=0
     until i > namearr.length
     if (data[category][stat]).include?(namearr[i])
       pigeonhash.each do |aname, info|
         if aname == namearr[i]
        info.each do |cgl, val|
          if cgl == category
          pigeonhash[aname][cgl] = val.push(stat.to_s)
         end
       end
     end
       end
     end
     i+=1
     end
   end
 end

return pigeonhash
end
