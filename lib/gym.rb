class Gym
  attr_reader :name, :cost
  @@all = []


  def initialize(name)#, cost)
    @name = name
   # @cost = cost
    Gym.all << self
  end


  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|user| user.gym == self}
  end

  def members
    memberships.map(&:lifter).map(&:name)
  end

  def lift_total
    total = 0
    memberships.each do |x|
      total += x.lifter.lift_total
    end
    total
  end

  
end
