class Room

  attr_reader :name, :max_population, :cost
  attr_accessor :population, :song_playing, :till

  def initialize(name, max_population, cost, till)
    @name = name
    @population = []
    @song_playing = song_playing
    @max_population = max_population
    @cost = cost
    @till = till
  end

  def play_song(song)
    song_playing = song
  end

  def add_guest_to_room(room, guest)
    population << guest if population.count < max_population && guest.wallet >= cost
    guest.wallet -= cost
    room.till += cost
    p "Woohoo!" if song_playing == guest.fav_song
  end

  def remove_guest_from_room(guest)
    population.delete(guest)
  end


end
