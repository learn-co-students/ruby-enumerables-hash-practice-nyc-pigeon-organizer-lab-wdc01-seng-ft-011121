require 'pry'


def nyc_pigeon_organizer(data)
  
  
  data.each_with_object ({}) do |(category, charac_hash), pigeons|
    
    charac_hash.each do |charac, name_array|

      name_array.each do |name|
        if !pigeons[name]
          pigeons[name] = {}
        end
        if !pigeons[name][category]
          pigeons[name][category] = []
        end
      pigeons[name][category] << charac.to_s

      end
    end
    pigeons
  end

  
  # pigeons = {}
  # names = []
  
  # data.each do |key|
  #   key.each do |value|
  #     value.each do |name|
  #     puts value[name]
  #     names.include? name 
  #     names << name
  #   end
  #   end
    
  # end
  #puts pigeons
  #puts names
end

