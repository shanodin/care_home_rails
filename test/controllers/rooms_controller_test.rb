require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @room1 = Room.create({number: '1'})
    @room2 = Room.create({number: '2'})

    @resident1 = Resident.create({name: "May", room_id: @room1.id})
    @resident2 = Resident.create({name: "Ben", room_id: @room2.id})
  end

  test "Show index page" do
    get '/rooms'
    assert_response :success
  end

  test "Show room" do
    get '/rooms/'+@room1.id.to_s
    assert_response :success
  end

  test "Edit room" do
    get '/rooms/'+@room1.id.to_s+'/edit'
    assert_response :success
  end

  test "New room" do
    get '/rooms/new'
    assert_response :success
  end

  test "Delete resident" do
    assert_equal(Room.all.length, 4)
    delete '/rooms/'+@room1.id.to_s
    assert_equal(Room.all.length, 3)
  end

end
