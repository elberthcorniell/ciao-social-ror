module FriendshipsHelper
  def follow_btn
    out = ''
    if @is_me
      out << if @friend == false
               link_to('Follow', friendships_url(friend_id: params[:id]), method: :post, class: 'btn')
             elsif @friend.nil?
               'Pending'
             else
               'Friends'
             end
    end
    out.html_safe
  end

  def list_friends
    out = ''
    @friends.each do |f|
      puts f
      out << "<li>#{f.friend.name} #{f.status && current_user.friend?(f.friend_id) ? '' : ', pending'}<li>"
    end
    out.html_safe
  end

  def list_requests
    out = ''
    @requests.each do |f|
      out << "<li class=\"for-btn\">
                <strong>#{f.friend.name}</strong>
                <div>
                    #{link_to('Accept', friendship_url(id: f.friend.id), method: :patch, class: 'btn')}
                    #{link_to('Decline', friendship_url(id: f.friend.id), method: :delete, class: 'btn decline')}
                </div>
            </li>"
    end
    out.html_safe
  end

  def render_requests
    out = ''
    unless @requests.empty?
      out << "<h1>Friend requests</h1>
                    <ul>
                        #{list_requests}
                    </ul>"
    end
    out.html_safe
  end
end
