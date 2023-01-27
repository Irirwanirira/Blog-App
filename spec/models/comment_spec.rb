require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Validations For the Comment model' do
    before(:each) do
      @comment = Comment.new(Text: 'Future programmer', author_id: 1)
    end
    before { @comment }

    it 'for author_id not present' do
      @comment.author_id = nil
      expect(@comment).to_not be_valid
    end
    it 'for title when present' do
      @comment.Text = nil
      expect(@comment).to_not be_valid
    end

    it 'for author_id to be present' do
      @comment.author_id = false
      expect(@comment).to_not be_valid
    end

    it 'author_id is integer' do
      @comment.author_id = 'joseph'
      expect(@comment).to_not be_valid
    end
  end
end
