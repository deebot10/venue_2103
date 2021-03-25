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

  def yell_at_patrons
    yells = []
    @patrons.each do |patron|
      yells << patron.upcase
    end
    yells
  end

  def over_capacity?
     if @patrons.length >= @capacity
       true
     else
       false
     end
  end

  def kick_out
    until self.over_capacity? == false do
      @patrons.pop
      require "pry"; binding.pry
    end
  end
end
