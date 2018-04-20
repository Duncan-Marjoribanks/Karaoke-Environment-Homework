class Room

  attr_reader :name, :max_population, :cost
  attr_accessor :population, :song_playing

  def initialize(name, max_population, cost)
    @name = name
    @population = []
    @song_playing = song_playing
    @max_population = max_population
    @cost = cost
  end


  def add_guest_to_room(guest)
    population << guest if population.count < max_population && guest.wallet >= cost
    guest.wallet -= cost
  end

  def remove_guest_from_room(guest)
    population.delete(guest)
  end

  def play_song(song)
    song_playing = song
  end

end
