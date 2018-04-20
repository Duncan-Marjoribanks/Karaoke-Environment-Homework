require("minitest/autorun")
require("minitest/rg")
require_relative("../room")


class RoomTest < MiniTest::Test

def setup
  @room_1 = Room.new("Rock and Roll room")
end


def test_has_name
  result = @room_1.name
  assert_equal("Rock and Roll room", result)
end


end
