require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../song")
require_relative("../guest")


class RoomTest < MiniTest::Test

  def setup
    @room_1 = Room.new("Rock and Roll room")
    @song_1 = Song.new("Nevermind")
    @guest_1 = Guest.new("Barney")
  end


  def test_has_name
    result = @room_1.name
    assert_equal("Rock and Roll room", result)
  end

  def test_can_play_song
    result = @song_1.name
    assert_equal("Nevermind", result)
  end

  def test_has_space_for_guests
    result = @room_1.population
    assert_equal([], result)
  end

  def test_can_add_guests_to_room
    result = @room_1.add_guest_to_room(@guest_1)
    assert_equal(1, @room_1.population.length)
  end


end
