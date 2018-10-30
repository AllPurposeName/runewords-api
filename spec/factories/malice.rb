FactoryBot.define do
  # Malice's runes
  factory :ith, class: Rune do
    name { "ith" }
  end

  factory :el, class: Rune do
    name { "el" }
  end

  factory :eth, class: Rune do
    name { "eth" }
  end

  # Malice's Item Type
  factory :melee_weapons, class: ItemType do
    name { "Melee Weapons" }
  end

  # Malice's Properties
  factory :malice_enhanced_damage, class: Property do
    name { "+33% Enhanced Damage" }
  end
  factory :max_damage, class: Property do
    name { "+9 Maximum Damage" }
  end
  factory :open_wounds, class: Property do
    name { "100% Chance Of Open Wounds" }
  end
  factory :reduce_targets_defense, class: Property do
    name { "-25% Target Defense" }
  end
  factory :reduce_monster_defense_on_hit, class: Property do
    name { "-100 To Monster Defense Per Hit" }
  end
  factory :prevent_monster_heal, class: Property do
    name { "Prevent Monster Heal" }
  end
  factory :malice_attack_rating, class: Property do
    name { "+50 To Attack Rating" }
  end
  factory :drain_life, class: Property do
    name { "Drain Life -5" }
  end

  # Malice itself
  factory :malice, class: Runeword do
    name { "Malice" }
    character_level  { "15" }
    ladder_only { false }
  end
end
