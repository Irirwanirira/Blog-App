class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes
  after_save :update_post_counter

  private

  def update_post_counter
    author.increment!(:posts_counter)
  end

  def recent_comments
    comments.order(created_at: :desc).limit(5)
  end
  validates :Title, presence: true, length: { in: 4..250 }
  validates :comment_count, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :like_counter, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
