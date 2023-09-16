require_relative 'raspberry'
class RaspberryBush < Raspberry
  @@raspberries = []
  def initialize(amount)
    amount.times do |i|
      @@raspberries << Raspberry.new(i + 1)
    end
  end

  def grow_all!
    @@raspberries.map! {|berry| berry.grow!}
  end

  def ripe_all?
    @@raspberries.all? {|berry| 
      berry.ripe?
    }
  end

  def give_away_all!
    @@raspberries = []
  end
end

