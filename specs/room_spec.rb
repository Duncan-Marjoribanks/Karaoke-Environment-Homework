require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../song")
require_relative("../guest")


class RoomTest < MiniTest::Test

  def setup
    @room_1 = Room.new("Rock and Roll room", 4)
    @song_1 = Song.new("Nevermind")
    @guest_1 = Guest.new("Barney", 20)
    @guest_2 = Guest.new("Timmy", 40)
    @guest_3 = Guest.new("Jane", 2)
    @guest_4 = Guest.new("Belinda", 30)
    @guest_5 = Guest.new("Norman", 5)
    @guest_6 = Guest.new("Suzanna", 1)
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
    result = @room_1.add_guest_to_room(@guest_1)
    assert_equal(1, @room_1.population.count)
  end

def test_can_remove_guest_from_room
  room_2 = Room.new("Disco room", 4)
  room_2.add_guest_to_room(@guest_1)
  result = room_2.remove_guest_from_room(@guest_1)
  assert_equal(0, room_2.population.count)
end

def test_too_many_people
  @room_1.add_guest_to_room(@guest_1)
  @room_1.add_guest_to_room(@guest_2)
  @room_1.add_guest_to_room(@guest_3)
  @room_1.add_guest_to_room(@guest_4)
  @room_1.add_guest_to_room(@guest_5)
  @room_1.add_guest_to_room(@guest_6)
  result = @room_1.population.count
  assert_equal(3, result)
end


end
