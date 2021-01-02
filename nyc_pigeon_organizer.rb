def nyc_pigeon_organizer(data)
  # write your code here!
  
  final = 
  data.each_with_object({}) do |(key, value), final|
    
    value.each do |inner, names|
      names.each do |name|
        if !final[name]
          final[name] = {}
        end
        if !final[name][key]
          final[name][key] = []
        end
        final[name][key].push(inner.to_s)
      end
    end
    
  end
end

=begin

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

=end