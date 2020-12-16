class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: 20 }

  has_many :posts
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :friendships
  has_many :inverted_friendships, class_name: 'Friendship', foreign_key: 'friend_id'

  def friends
    Friendship.where(['user_id = ?', self[:id]])
  end

  def friends_without_status
    Friendship.select(:friend_id).where(['user_id = ?', self[:id]])
  end

  def requests
    Friendship.where(['user_id = ? AND status IS null', self[:id]])
  end

  def friend?(user_id)
    friend = Friendship.select(:status).where("(friend_id = #{self[:id]} AND user_id = #{user_id})")
    return false if friend.empty?

    friend.first.status
  end
end
