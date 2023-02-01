class User < ApplicationRecord
  has_many :posts, foreign_key: 'author_id'
  has_many :comments, foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'

  private

  def recent_posts
    posts.order(created_at: :desc).limit(3)
  end

  validates :name, presence: true, length: { in: 6..25 }
  validates :posts_counter, presence: true, length: { in: 0..10 },
                            numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
