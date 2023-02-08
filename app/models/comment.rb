class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :post

  after_save :update_comment_count

  def update_comments_counter
    post.increment!(:comment_count)
  end
end
