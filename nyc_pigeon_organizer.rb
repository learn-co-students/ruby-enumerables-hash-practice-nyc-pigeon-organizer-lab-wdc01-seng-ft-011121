require'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  name = data.map{
    |keys, elements|
    elements.map {
      |inner_key, names|
      names
    }
  }
  name.flatten!.uniq!
  pigeon_list = Hash.new 
  name.map {
      |i|
      pigeon_list[i] = {}
      tst = data.map {
        |keys, elements|
        src = elements.select {
          |inner_key, names|
          names.include? i 
        }
        #binding.pry
        pigeon_list[i][keys] = src.collect {|i, a| i.to_s}
      }
      #binding.pry
    } 
  #binding.pry
  pigeon_list
  
  
#  color = []
 # data.map {
  #  specific_color = []
   # name = []
    #|key, elements|
    #elements.map {
     # |i|
      #specific_color << i 
    #}
    #binding.pry
    #elements.map {
    #  |inner_key, names|
    #  name << names
    #}
    #binding.pry
  #}
end
