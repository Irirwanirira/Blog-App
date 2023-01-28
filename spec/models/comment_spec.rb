require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Validations For the Comment model' do
    before(:each) do
      @comment = Comment.new(Text: ' Last time in VALHALALA ', author_id: 1)
    end
    before { @comment }

    it 'author_id should not be blank ' do
      @comment.author_id = nil
      expect(@comment).to_not be_valid
    end
    it 'Comment text sholud not be empty' do
      @comment.Text = false
      expect(@comment).to_not be_valid
    end

    it 'for author_id to be present' do
      @comment.author_id = false
      expect(@comment).to_not be_valid
    end

    it 'author_id should not be a string but an integer' do
      @comment.author_id = 'Joseph'
      expect(@comment).to_not be_valid
    end
  end
end
