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
  has_many :friendships_2, :class_name => "Friendship", :foreign_key => "friend_id"

  def friends
    Friendship.select("(CASE WHEN user_id = #{self[:id]} THEN friend_id ELSE user_id END) AS user_id").where(['user_id = ? OR friend_id = ?', self[:id], self[:id]])
  end

end
