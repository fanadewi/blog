# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  content    :text             default("")
#  title      :string           default("")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Post < ApplicationRecord
    has_rich_text :content
    belongs_to :user
    delegate :email, to: :user, prefix: :author
end
