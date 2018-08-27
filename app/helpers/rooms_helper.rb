module RoomsHelper

  def room_view_button(room)
    button_to 'View', room_path(:id => room.id), :method => :get
  end

  def room_edit_button(room)
    button_to "Edit", edit_room_path(:id => room.id), :method => :get
  end

  def room_delete_button(room)
    button_to "Delete", room_path(:id => room.id), :method => :delete
  end

  def new_room_button
    button_to "Add New Room", new_room_path(), :method => :get
  end

  def new_resident_button
    button_to "Add new resident", new_resident_path(), :method => :get
  end

  def count_residents(room, residents)
    res_count = 0
      for resident in residents do
        if (room.id === resident.room_id)
          res_count += 1
        end
      end
    return res_count
  end

end
