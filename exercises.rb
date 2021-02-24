class Viking
  attr_accessor :name, :age, :health, :strength
  @@starting_health

  def initialize (name, health, age, strength)
    @name = name
    @health = health
    @age = age
    @strength = strength
  end
  def self.create_warrior(name)
    age = rand * 20 + 15
    health = [age * 5, 120].min
    strength = [age / 2, 10].min
    Viking.new(name, health, age, strength)
  end
  def attack(enemy)

  end
  def take_damage(damage)
    self.health -= damage
    self.shout("OUCH!")
  end
  def shout(str)
    puts str
  end
end

sten = Viking.create_warrior("Sten")
p sten