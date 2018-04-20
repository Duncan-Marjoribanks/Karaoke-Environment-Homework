class Room

  attr_reader :name
  attr_accessor :population

  def initialize(name)
    @name = name
    @population = []
  end

def add_guest_to_room(guest)
  population << guest
end

end
