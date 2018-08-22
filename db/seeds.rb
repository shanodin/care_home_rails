Room.delete_all
Resident.delete_all

waiting_list = Room.new({number: "Waiting List"})
waiting_list.save
room1 = Room.new({number: "1"})
room1.save
room2 = Room.new({number: "2"})
room2.save
room3 = Room.new({number: "3"})
room3.save

resident1 = Resident.new({name: "Kay", age: "79", room_id: room1.id})
resident1.save
resident2 = Resident.new({name: "Ron", age: "84", room_id: room1.id})
resident2.save
resident3 = Resident.new({name: "Jackie", age: "71", room_id: room2.id})
resident3.save
resident4 = Resident.new({name: "Roy", age: "89", room_id: waiting_list.id})
resident4.save
