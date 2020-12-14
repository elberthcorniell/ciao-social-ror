class FriendshipsController < ApplicationController
    def create
        @friendship = current_user.friendship.build()
    end
end
