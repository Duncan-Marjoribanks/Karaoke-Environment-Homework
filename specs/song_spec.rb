require("minitest/autorun")
require("minitest/rg")
require_relative("../song")


class SongTest < MiniTest::Test

  def setup
    @song_1 = Song.new("Welcome to the Jungle")
  end

  def test_has_name
    result = @song_1.name
    assert_equal("Welcome to the Jungle", result)
  end

  

end
