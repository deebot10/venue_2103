class Venue
  attr_accessor :name,
                :capacity,
                :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(customer)
    @patrons.push(customer)
  end

  # def yell_at_patrons
  #
  #   return @patrons.upcase
  #
  # end

  def over_capacity?
     return false if @patrons.length == 3
     true
  end

  def kick_out
  end 
end
