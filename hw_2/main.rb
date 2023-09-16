require_relative "raspberry-bush"
require_relative "human"
require_relative "raspberry"

if __FILE__ == $PROGRAM_NAME
  rb = RaspberryBush.new 10
  human = Human.new("Danil", rb)
  berry = Raspberry.new 124

  unless rb.ripe_all?
    human.work!
  end
  human.harvest

end
