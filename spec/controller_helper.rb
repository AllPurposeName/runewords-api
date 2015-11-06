require "acceptance_helper"
def root_path
  "api/v1"
end

RSpec.configure do |config|
  config.before(:each, type: :controller) do
    FactoryGirl.create(:malice,
                       runes: [FactoryGirl.create(:ith),
                               FactoryGirl.create(:el),
                               FactoryGirl.create(:eth)],
                       properties: [FactoryGirl.create(:malice_enhanced_damage),
                                    FactoryGirl.create(:max_damage),
                                    FactoryGirl.create(:open_wounds),
                                    FactoryGirl.create(:reduce_targets_defense),
                                    FactoryGirl.create(:reduce_monster_defense_on_hit),
                                    FactoryGirl.create(:prevent_monster_heal),
                                    FactoryGirl.create(:malice_attack_rating),
                                    FactoryGirl.create(:drain_life)],
                       item_types: [FactoryGirl.create(:melee_weapons)])
  end
end
