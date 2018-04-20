class Room

  attr_reader :name
  attr_accessor :population

  def initialize(name)
    @name = name
    @population = []
  end


end
