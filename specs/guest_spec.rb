require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")


class GuestTest < MiniTest::Test

  def setup
    @guest_1 = Guest.new("Mindy", 25, "Boom shake the room")
  end

  def test_has_name
    result = @guest_1.name
    assert_equal("Mindy", result)
  end

  def test_has_wallet
    result = @guest_1.wallet
    assert_equal(25, result)
  end

def test_has_fav_song
  result = @guest_1.fav_song
  assert_equal("Boom shake the room", result)
end

end
