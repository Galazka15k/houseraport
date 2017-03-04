class Post < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }

  validates :content, presence: true, length: { maximum: 140 }


		scope :sortuj, lambda{order ("posts.content ASC")}
end
