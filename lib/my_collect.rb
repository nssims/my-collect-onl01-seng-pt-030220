def my_collect(collection)
  i = 0 
  collect_array = []
  
  while i < collection.length 
    collect_array << yield(collection[i])
    i += 1
  end
  collect_array
end 

array = []

my_collect(array) do |name|
  name.split(" ").first 
end

