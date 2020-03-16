require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  data[:gender].each do |key, value| 
    i = 0 
    while i < value.length do
    new_hash[value[i]] = {
      :color => [],
      :gender => [key.to_s],
      :lives => []
    }
    i += 1
    end
   #binding.pry
   
  end
  data[:color].each do |key, value|
    i = 0 
    while i < value.length do
      new_hash[value[i]][:color].push(key.to_s)
      i += 1
    end
    #binding.pry
  end
  
  data[:lives].each do |key, value|
    i = 0 
    while i < value.length do
     new_hash[value[i]][:lives] = [key]
      i += 1
    end
    #binding.pry
  end
  
  new_hash
end
