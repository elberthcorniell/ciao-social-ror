require 'rails_helper'

RSpec.describe 'Friendship', type: :model do
  it 'will check for creating the friendship' do
    d = User.create!(email: 'test1@gmail.com', name: 'moon', password: '123456')
    b = User.create!(email: 'test2@gmail.com', name: 'sun', password: '234567')
    v = Friendship.create!(user_id: d.id, friend_id: b.id)
    expect(Friendship.find([d.id, b.id])).to be_valid
  end
end

RSpec.describe 'Friendship', type: :model do
  it 'will check for create a valid friendship ' do
    f = User.create!(email: 'test1@gmail.com', name: 'moon', password: '123456')
    v = Friendship.new(user_id: f.id)
    expect(v).to_not be_valid
  end
end

RSpec.describe 'Friendship', type: :model do
  it 'will check for deleting the friendship' do
    e = User.create!(email: 'test1@gmail.com', name: 'moon', password: '123456')
    g = User.create!(email: 'test2@gmail.com', name: 'sun', password: '234567')
    Friendship.create!(user_id: e.id, friend_id: g.id)
    expect(Friendship.find([e.id, g.id]).destroy).to be_valid
  end
end

RSpec.describe 'Friendship', type: :model do
  it 'will check for accepting the friendship' do
    s = User.create!(email: 'test1@gmail.com', name: 'moon', password: '123456')
    r = User.create!(email: 'test2@gmail.com', name: 'sun', password: '234567')
    Friendship.create!(user_id: s.id, friend_id: r.id)
    expect(Friendship.find([s.id, r.id]).update(status: true)).to be(true)
  end
end
