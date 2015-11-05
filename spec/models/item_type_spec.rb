require 'rails_helper'

RSpec.describe ItemType, type: :model do
  describe "#name" do
    it "returns it's name" do
      name = "Helms"
      ItemType.create(name: name)

      expect(ItemType.first.name).to eq(name)
    end
  end
  describe "#runewords" do
    it "returns a list of associated runewords" do
      rw_one_name   = "Duress"
      rw_two_name   = "Ancient's Pledge"
      rw_three_name = "Spirit"

      rw_one   = Runeword.create(name: rw_one_name)
      rw_two   = Runeword.create(name: rw_two_name)
      rw_three = Runeword.create(name: rw_three_name)

      ItemType.create.runewords << [rw_one, rw_two, rw_three]

      expect(ItemType.first.runewords.count).to      eq(3)
      expect(ItemType.first.runewords.first.name).to eq(rw_one_name)
      expect(ItemType.first.runewords.last.name).to  eq(rw_three_name)
    end
  end
end
