require 'rails_helper'

RSpec.describe Item, type: :model do
  Itemer = Item.new(name: 'suger', amount: '4', user_id: 1, catagory_id: 2)

  before { Itemer.save }
  it 'is valid with valid attributes' do
    expect(Itemer).to_not be_valid
  end

  it 'is not valid without an user_id' do
    Itemer.user_id = nil
    expect(Itemer).to_not be_valid
  end

  it 'is not valid without a catagory_id' do
    Itemer.catagory_id = nil
    expect(Itemer).to_not be_valid
  end

  it 'is not valid without a name' do
    Itemer.name = nil
    expect(Itemer).to_not be_valid
  end

  it 'is not valid without a amount' do
    Itemer.amount = nil
    expect(Itemer).to_not be_valid
  end
end
