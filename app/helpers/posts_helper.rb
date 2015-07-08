module PostsHelper
  def request_button(post)
    if current_user.requesting?(post) == @post.request
      button_to "Unfollow", undo_request_post_path(post)
    elsif current_user.can_request?(post)
      button_to "Request", request_post_path(post_id: post[:post_id], user_id: current_user.id)
    end
  end
end
