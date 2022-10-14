require 'rails_helper'

RSpec.describe Catagory, type: :model do
  catagorier = Catagory.new(name: 'suger', icon: 'icon', user_id: 1)

  describe 'validations' do
    before { catagorier.save }
    it 'is valid with valid attributes' do
      expect(catagorier).to_not be_valid
    end

    it 'is not valid without an user_id' do
      catagorier.user_id = nil
      expect(catagorier).to_not be_valid
    end

    it 'is not valid without a name' do
      catagorier.name = nil
      expect(catagorier).to_not be_valid
    end

    it 'is not valid without a amount' do
      catagorier.icon = nil
      expect(catagorier).to_not be_valid
    end
  end
end
