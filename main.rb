list = Array.new(3) 

p list.object_id

list << 1

p list
p list.object_id

list.unshift(2)

p list
p list.object_id
