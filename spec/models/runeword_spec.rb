require 'rails_helper'

RSpec.describe Runeword, type: :model do
  describe '#name' do
    it "returns it's name" do
      runeword_name = 'Spirit'
      Runeword.create(name: runeword_name)

      expect(runeword_name).to eq(Runeword.first.name)
    end
  end

  describe '#character_level' do
    it "returns it's clvl" do
      clvl = 3
      Runeword.create(character_level: clvl)

      expect(Runeword.first.character_level).to eq(clvl)
    end
  end

  describe '#ladder_only?' do
    it 'returns whether runeword is ladder only' do
      ladder        = true
      not_ladder    = false
      ladder_rw     = Runeword.create(ladder_only: ladder)
      not_ladder_rw = Runeword.create(ladder_only: not_ladder)

      expect(ladder_rw.ladder_only?).to     eq(true)
      expect(not_ladder_rw.ladder_only?).to eq(false)
    end
  end

  describe '#runes' do
    it 'returns a list of associated runes' do
      rune_one = { name: 'tir' }
      rune_two = { name: 'el' }
      Runeword.create.runes.create(rune_one)
      Runeword.first.runes.create(rune_two)

      expect(Runeword.first.runes.count).to      eq(2)
      expect(Runeword.first.runes.first.name).to eq('tir')
    end
  end

  describe '#properties' do
    it 'returns a list of associated properties' do
      prop_name = '+33% Enhanced Damage'
      property = { name: prop_name }
      Runeword.create.properties.create(property)

      expect(Runeword.first.properties.count).to      eq(1)
      expect(Runeword.first.properties.first.name).to eq(prop_name)
    end
  end

  describe '#item_types' do
    it 'returns a list of associated item types' do
      type_one_name = 'Scepters'
      type_two_name = 'Axes'
      item_type_one = { name: type_one_name }
      item_type_two = { name: type_two_name }
      Runeword.create.item_types.create(item_type_one)
      Runeword.first.item_types.create(item_type_two)

      expect(Runeword.first.item_types.count).to     eq(2)
      expect(Runeword.first.item_types.last.name).to eq(type_two_name)
    end
  end
end
