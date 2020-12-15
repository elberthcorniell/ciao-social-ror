require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'validation' do
    u = User.new(email: 'zorro@onepiece.com', name: 'zorro', password: '123456')
    p = Post.new(user_id: 2, content: 'You wanna say something?')
    d = Comment.new(user_id: 2, post_id: 2, content: 'you up for the challenge?')

    it 'should have content' do
      p.content = nil
      expect(Comment.new(user_id: 2)).to_not be_valid
    end
  end
end
