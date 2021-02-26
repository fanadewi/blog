module PostsHelper
    def is_owner?(post)
        user_signed_in? && (current_user == post.user || current_user.is_admin?)
    end
end
