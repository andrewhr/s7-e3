module D2Hero
  class Character
    attr_reader :name
    attr_reader :character_class
    attr_reader :level
    attr_reader :strength
    attr_reader :energy
    attr_reader :dexterity
    attr_reader :vitality

    CHARACTER_CLASS = [
      :amazon,
      :sorceress,
      :necromancer,
      :paladin,
      :barbarian,
      :druid,
      :assassin]

    def initialize(params)
      @name = params[:name]
      @character_class = params[:character_class]
      @level = params[:level]
      @strength = params[:strength]
      @energy = params[:energy]
      @dexterity = params[:dexterity]
      @vitality = params[:vitality]
    end
  end
end
