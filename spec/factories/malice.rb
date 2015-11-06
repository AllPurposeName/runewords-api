FactoryGirl.define do
  # Malice's runes
  factory :ith, class: Rune do
    name "ith"
  end

  factory :el, class: Rune do
    name "el"
  end

  factory :eth, class: Rune do
    name "eth"
  end

  # Malice's Item Type
  factory :melee_weapons, class: ItemType do
    name "Melee Weapons"
  end

  # Malice's Properties
  factory :malice_enhanced_damage, class: Property do
    name "+33% Enhanced Damage"
  end
  factory :max_damage, class: Property do
    name "+9 Maximum Damage"
  end
  factory :open_wounds, class: Property do
    name "100% Chance Of Open Wounds"
  end

  # Malice itself
  factory :malice, class: Runeword do
    name "Malice"
    character_level  "15"
    ladder_only false
  end
end
