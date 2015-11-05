require 'rails_helper'

RSpec.describe Rune, type: :model do
  describe "#name" do
    it "returns it's name" do
      name = "Tal"
      Rune.create(name: name)

      expect(Rune.first.name).to eq(name)
    end
  end

  describe "#character_level" do
    it "returns it's clvl" do
      clvl = 53
      Rune.create(character_level: clvl)

      expect(Rune.first.character_level).to eq(clvl)
    end
  end

  describe "#runewords" do
    it "returns a list of associated runewords" do
      rw_one_name = "Malice"
      rw_two_name = "Fury"
      rw_one = Runeword.create(name: rw_one_name)
      rw_two = Runeword.create(name: rw_two_name)

      Rune.create.runewords << [rw_one, rw_two]

      expect(Rune.first.runewords.count).to      eq(2)
      expect(Rune.first.runewords.first.name).to eq(rw_one_name)
      expect(Rune.first.runewords.last.name).to  eq(rw_two_name)
    end
  end
end
