# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  content    :text             default("")
#  title      :string           default("")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
end
