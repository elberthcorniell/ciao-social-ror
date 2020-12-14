class FriendshipsController < ApplicationController
    before_action :authenticate_user!

    def index
        @friends = current_user.friends
        @requests = current_user.requests
    end

    def create
        @friendship = current_user.friendships.build(friend_id: params[:friend_id])
        @friendship.save
        format.html { redirect_to user_url(id: params[:friend_id]) }
    end

end
