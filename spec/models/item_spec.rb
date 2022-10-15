require 'rails_helper'

RSpec.describe Item, type: :model do
  itemer = Item.new(name: 'suger', amount: '4', user_id: 1, catagory_id: 2)

  before { itemer.save }
  it 'is valid with valid attributes' do
    expect(itemer).to_not be_valid
  end

  it 'is not valid without an user_id' do
    itemer.user_id = nil
    expect(itemer).to_not be_valid
  end

  it 'is not valid without a catagory_id' do
    itemer.catagory_id = nil
    expect(itemer).to_not be_valid
  end

  it 'is not valid without a name' do
    itemer.name = nil
    expect(itemer).to_not be_valid
  end

  it 'is not valid without a amount' do
    itemer.amount = nil
    expect(itemer).to_not be_valid
  end
end
