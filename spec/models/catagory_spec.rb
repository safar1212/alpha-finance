require 'rails_helper'

RSpec.describe Catagory, type: :model do
  Catagorier = Catagory.new(name: 'suger', icon: 'icon', user_id: 1)

  before { Catagorier.save }
  it 'is valid with valid attributes' do
    expect(Catagorier).to_not be_valid
  end

  it 'is not valid without an user_id' do
    Catagorier.user_id = nil
    expect(Itemer).to_not be_valid
  end

  it 'is not valid without a name' do
    Catagorier.name = nil
    expect(Catagorier).to_not be_valid
  end

  it 'is not valid without a amount' do
    Catagorier.icon = nil
    expect(Catagorier).to_not be_valid
  end
end
