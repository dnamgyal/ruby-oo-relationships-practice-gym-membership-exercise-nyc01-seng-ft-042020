class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    Lifter.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|user| user.lifter == self }
  end

  # def my_gyms
  #   memberships.map do |item|
  #     item.gym.name
  #   end
  # end

  def my_gyms
    memberships.map(&:gym).map(&:name)
  end

  def self.avg_lift_total
    total = 0
    Lifter.all.each do |x|
      total += x.lift_total
    end
    total/(Lifter.all.count)
  end


  def total_cost
    total = 0
    memberships.each do |x|
      total += x.cost
    end
    total
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end
    
  
end
