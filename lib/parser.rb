# encoding: utf-8
require 'bindata'

module D2Hero
  
  # Reference:
  # http://www.ladderhall.com/ericjwin/109/trevin/trevinfileformat.html
  class Header < BinData::Record
    endian :little

    uint32 :header
    uint32 :version
    uint32 :filesize
    uint32 :checksum
    uint32 :unknow
    
    string :character_name, :length => 16, :trim_padding => true

    uint8  :character_status
    uint8  :character_progression
    uint16 :unknow2

    uint8  :character_class_id
    uint16 :unknow3
    uint8  :character_level

    skip   :length => 291

    CHARACTER_CLASS = {
      0 => :amazon,
      1 => :sorceress,
      2 => :necromancer,
      3 => :paladin,
      4 => :barbarian,
      5 => :druid,
      6 => :assassin
    }

    def character_class
      CHARACTER_CLASS[character_class_id]
    end
  end

  # Reference:
  # http://www.ladderhall.com/ericjwin/109/trevin/trevinfileformat.html
  class QuestCompletition < BinData::Record
    string :identifier, :length => 4
    skip   :length => 294

    def valid?
      identifier == "Woo!"
    end
  end

  # Reference:
  # http://www.ladderhall.com/ericjwin/109/trevin/trevinfileformat.html
  class Waypoints < BinData::Record
    string :identifier, :length => 2
    skip   :length => 79

    def valid?
      identifier == "WS"
    end
  end

  # Reference:
  # http://www.ladderhall.com/ericjwin/109/trevin/trevinfileformat.html
  class NPCIntroductions < BinData::Record
    string :identifier, :length => 2
    skip :length => 49

    def valid?
      identifier == "w4"
    end
  end

  # Reference:
  # http://www.ladderhall.com/ericjwin/109/trevin/trevinfileformat.html
  class CharacterStatistics < BinData::Record
    endian :little

    string :identifier, :length => 2

    bit1   :strength_flag
    bit1   :energy_flag
    bit1   :dexterity_flag
    bit1   :vitality_flag
    bit1   :remaining_stats_flag
    bit1   :remaining_skills_flag
    bit1   :current_life_flag
    bit1   :base_life_flag
    bit1   :current_mana_flag
    bit1   :base_mana_flag
    bit1   :current_stamina_flag
    bit1   :base_stamina_flag
    bit1   :level_flag
    bit1   :experience_flag
    bit1   :gold_in_inventory_flag
    bit1   :gold_in_stash_flag
    
    uint32 :strength,  :onlyif => :has_strength?
    uint32 :energy,    :onlyif => :has_energy?
    uint32 :dexterity, :onlyif => :has_dexterity?
    uint32 :vitality,  :onlyif => :has_vitality?

    def has_strength?
      strength_flag.nonzero?
    end

    def has_energy?
      energy_flag.nonzero?
    end

    def has_dexterity?
      dexterity_flag.nonzero?
    end

    def has_vitality?
      vitality_flag.nonzero?
    end
  end

  class Hero < BinData::Record
    endian :little

    header               :file_header
    quest_completition   :completition
    waypoints            :waypoints
    npc_introductions    :introductions
    character_statistics :stats
  end
end
