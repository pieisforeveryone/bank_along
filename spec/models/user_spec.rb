require "rails_helper"

describe User, type: :model do
  describe 'validations' do
    it 'should have a name' do
      user = User.new(name: 'test', cash: 100)
      expect(user.name).to eq('test')
    end
    it 'should have cash' do
      user = User.new(name: 'test', cash: 100)
      expect(user.cash).to eq(100)
    end
  end
end
