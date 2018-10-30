require 'rails_helper'

RSpec.describe Property, type: :model do
  describe '#name' do
    it "returns it's name" do
      name = '30% Enhanced Defense'
      Property.create(name: name)

      expect(Property.first.name).to eq(name)
    end
  end
  describe '#description' do
    it "returns it's description" do
      desc = 'Increases the defence of the base item by 30%'
      Property.create(description: desc)

      expect(Property.first.description).to eq(desc)
    end
  end
  describe '#runewords' do
    it 'returns a list of associated runewords' do
      rw_one_name   = 'Gloom'
      rw_two_name   = 'Enlightenment'
      rw_three_name = 'Heart of the Oak'
      rw_four_name  = 'Stone'

      rw_one   = Runeword.create(name: rw_one_name)
      rw_two   = Runeword.create(name: rw_two_name)
      rw_three = Runeword.create(name: rw_three_name)
      rw_four  = Runeword.create(name: rw_four_name)

      Property.create.runewords << [rw_one, rw_two, rw_three, rw_four]

      expect(Property.first.runewords.count).to      eq(4)
      expect(Property.first.runewords.first.name).to eq(rw_one_name)
      expect(Property.first.runewords.last.name).to  eq(rw_four_name)
    end
  end
end
