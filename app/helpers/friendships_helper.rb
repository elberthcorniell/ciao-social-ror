module FriendshipsHelper
    def follow_btn
        out = ''
        if @is_me
            if @friend == false
                out << link_to( "Follow", friendships_url(friend_id: params[:id]), method: :post, class: "btn" )
            elsif @friend == nil
                out << 'Pending'
            else
                out << 'Friends'
            end
        end
        out.html_safe
    end

    def list_friends
        out = ''
        @friends.each do |f|
            puts f
            out << "<li>#{f.user.name} #{f.status ? '': ', pending'}<li>"
        end
        out.html_safe
    end

    def list_requests 
        out = ''
        @requests.each do |f|
            out << "<li class=\"for-btn\">
                <strong>#{f.user.name}</strong>
                <div>
                    #{link_to("Accept", friendship_url(id: f.id), method: :patch, class: "btn")}
                    #{link_to("Decline", friendship_url(id: f.id), method: :delete, class: "btn decline")}
                </div>
            </li>"
        end
        out.html_safe
    end

    def render_requests
        out = ''
        if !@requests.empty?
            out << "<h1>Friend requests</h1>
                    <ul>
                        #{list_requests}
                    </ul>"
        end
        out.html_safe
    end

end
