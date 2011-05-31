require 'character'
require 'parser'

module D2Hero
  extend self

  def load(filename)
    char_data = Hero.read(File.new(filename))
    Character.new(:name => char_data.file_header.character_name,
                  :character_class => char_data.file_header.character_class,
                  :level => char_data.file_header.character_level,
                  :strength => char_data.stats.strength,
                  :energy => char_data.stats.energy,
                  :dexterity => char_data.stats.dexterity,
                  :vitality => char_data.stats.vitality) 
  end
end
