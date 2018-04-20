class Room

  attr_reader :name
  attr_accessor :population, :song_playing

  def initialize(name)
    @name = name
    @population = []
    @song_playing = song_playing
  end

  def add_guest_to_room(guest)
    population << guest
  end

  def remove_guest_from_room(guest)
    population.delete(guest)
  end

  def play_song(song)
    song_playing = song
  end

end
