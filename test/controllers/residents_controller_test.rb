require 'test_helper'

class ResidentsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @room1 = Room.create({number: '1'})
    @room2 = Room.create({number: '2'})

    @resident1 = Resident.create({name: "May", room_id: @room1.id})
    @resident2 = Resident.create({name: "Ben", room_id: @room2.id})
  end

  test "Should get index" do
    get '/residents'
    assert_response :success
  end

  test "Show resident" do
    get '/residents/'+@resident1.id.to_s
    assert_response :success
  end

  test "Edit resident" do
    get '/residents/'+@resident1.id.to_s+'/edit'
    assert_response :success
  end

  test "New resident" do
    get '/residents/new'
    assert_response :success
  end

  test "Delete resident" do
    assert_equal(Resident.all.length, 4)
    delete '/residents/'+@resident1.id.to_s
    assert_equal(Resident.all.length, 3)
  end

end
