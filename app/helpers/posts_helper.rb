module PostsHelper
    def is_owner?(post)
        user_signed_in? && current_user == post.user
    end
end
