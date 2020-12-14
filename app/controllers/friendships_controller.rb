class FriendshipsController < ApplicationController
  before_action :authenticate_user!

  def index
    @friends = current_user.friends
    @requests = current_user.requests
  end

  def create
    @friendship = current_user.friendships.build(friend_id: params[:friend_id])
    @friendship.save
    redirect_to user_url(id: params[:friend_id])
  end

  def update
    @friendship = Friendship.find(params[:id])
    @friendship.update(status: true)
    redirect_to friendships_path
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    @friendship.destroy
    redirect_to friendships_path
  end
end
