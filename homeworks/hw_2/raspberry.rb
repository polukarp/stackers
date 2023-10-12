class Raspberry

  protected
    attr_reader :state, :index

  @@states = ["Отсутствует", "Созревание", "Зеленая", "Красная"]

  def initialize(index)
    @index = index
    @state = @@states[0]
  end

  public def ripe?
    return @@states.index(@state) == @@states.length - 1
  end

  def grow!
    next_index = @@states.index(@state) + 1
    next_state = @@states[next_index]
    @state = next_state if next_index < @@states.length
  end

end

