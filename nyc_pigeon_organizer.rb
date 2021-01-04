def nyc_pigeon_organizer(data)
  name_hash = {}
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|
        if !name_hash[name]
          name_hash[name] = {}
        end
        if !name_hash[name][key]
          name_hash[name][key] = []
        end
        name_hash[name][key] << new_value.to_s
      end
    end
  end
  name_hash
end