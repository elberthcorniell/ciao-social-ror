class FriendshipsController < ApplicationController
  before_action :authenticate_user!

  def index
    @friends = current_user.friends
    @requests = current_user.requests
  end

  def create
    @friendship = current_user.friendships.build(friend_id: params[:friend_id], status: true)
    @friendship2 = User.find(params[:friend_id]).friendships.build(friend_id: current_user.id)
    @friendship.save
    @friendship2.save
    redirect_to user_url(id: params[:friend_id])
  end

  def update
    @friendship = Friendship.find([params[:id].to_i, current_user.id])
    @friendship.update(status: true)
    redirect_to friendships_path
  end

  def destroy
    @friendship = Friendship.find([params[:id].to_i, current_user.id])
    @friendship.destroy
    redirect_to friendships_path
  end
end
