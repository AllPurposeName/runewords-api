require 'acceptance_helper'
def root_path
  'api/v1'
end

RSpec.configure do |config|
  config.before(:each, type: :controller) do
    FactoryBot.create(:malice,
                      runes: [FactoryBot.create(:ith),
                              FactoryBot.create(:el),
                              FactoryBot.create(:eth)],
                      properties: [FactoryBot.create(:malice_enhanced_damage),
                                   FactoryBot.create(:max_damage),
                                   FactoryBot.create(:open_wounds),
                                   FactoryBot.create(:reduce_targets_defense),
                                   FactoryBot.create(:reduce_monster_defense_on_hit),
                                   FactoryBot.create(:prevent_monster_heal),
                                   FactoryBot.create(:malice_attack_rating),
                                   FactoryBot.create(:drain_life)],
                      item_types: [FactoryBot.create(:melee_weapons)])
  end
end
