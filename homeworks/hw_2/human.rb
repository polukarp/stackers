class Human
  attr_reader :name

  protected

  attr_reader :plant

  def initialize(name, plant)
    @name = name
    @plant = plant
  end

  public

  def work!
    @plant.grow_all!
  end

  def harvest
    @plant.ripe_all? ? @plant.give_away_all : print('Растения еще не созрели.')
  end



  def self.knowledge_base
    <<~TEXT
      Выращивание Малины:

      1. Подберите солнечное место.
      2. Удобряйте почву.
      3. Поддерживайте растение при помощи опор.
      4. Поливайте регулярно.
      5. Удаляйте старые побеги.

      Удачи в выращивании!
    TEXT
  end
end
