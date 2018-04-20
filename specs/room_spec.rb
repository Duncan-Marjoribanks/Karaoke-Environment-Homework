require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../song")
require_relative("../guest")


class RoomTest < MiniTest::Test

  def setup
    @room_1 = Room.new("Rock and Roll room", 4, 10, 100)
    @song_1 = Song.new("Nevermind")
    @guest_1 = Guest.new("Barney", 20, "Nevermind")
    @guest_2 = Guest.new("Timmy", 40, "Welcome to the Jungle")
    @guest_3 = Guest.new("Jane", 2, "Waterloo")
    @guest_4 = Guest.new("Belinda", 30, "Smack my bitch up")
    @guest_5 = Guest.new("Norman", 5, "Happy birthday")
    @guest_6 = Guest.new("Suzanna", 1, "Nevermind")
  end


  def test_has_name
    result = @room_1.name
    assert_equal("Rock and Roll room", result)
  end

  def test_can_play_song
    result = @room_1.play_song(@song_1)
    assert_equal("Nevermind", result.name)
  end

  def test_has_space_for_guests
    result = @room_1.population
    assert_equal([], result)
  end

  def test_can_add_guests_to_room
    result = @room_1.add_guest_to_room(@room_1, @guest_1)
    assert_equal(1, @room_1.population.count)
    assert_equal(10, @guest_1.wallet)
    assert_equal(110, @room_1.till)
  end

def test_can_remove_guest_from_room
  room_2 = Room.new("Disco room", 4, 10, 200)
  room_2.add_guest_to_room(room_2, @guest_1)
  result = room_2.remove_guest_from_room(@guest_1)
  assert_equal(0, room_2.population.count)
end

def test_too_many_people
  @room_1.play_song(@song_1)
  @room_1.add_guest_to_room(@room_1, @guest_1)
  @room_1.add_guest_to_room(@room_1, @guest_2)
  @room_1.add_guest_to_room(@room_1, @guest_3)
  @room_1.add_guest_to_room(@room_1, @guest_4)
  @room_1.add_guest_to_room(@room_1, @guest_5)
  @room_1.add_guest_to_room(@room_1, @guest_6)
  result = @room_1.population.count
  assert_equal(3, result)
end


end
