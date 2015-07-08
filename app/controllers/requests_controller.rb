class RequestsController < ApplicationController

def create
  post = find_post
  current_user.user_request(post)
  redirect_to current_user
end

def destroy
  post = find_post
  current_user.user_undo_request(post)
  redirect_to current_user
end

private

def find_post
  Post.find(params[:id])
end

end
