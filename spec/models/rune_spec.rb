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
    rw_one_name = Runeword.create(name: "Malice")
    rw_two_name = Runeword.create(name: "Fury")

    Rune.create.runewords << [rw_one_name, rw_two_name]

    expect(Rune.first.runewords.count).to      eq(2)
    expect(Rune.first.runewords.first.name).to eq("Malice")
    end
  end
end
