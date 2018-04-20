require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../song")


class RoomTest < MiniTest::Test

  def setup
    @room_1 = Room.new("Rock and Roll room")
    @song_1 = Song.new("Nevermind")
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

end
