require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Validations For the post model' do
    before(:each) do
      subject { Post.new(Title: 'The Imposible ', comment_count: 10, like_counter: 34) }
    end

    before { subject.save }

    it 'Title must not be blank.' do
      subject.Title = nil
      expect(subject).to_not be_valid
    end

    it 'Title must not exceed 250 characters' do
      subject.Title = 300
      expect(subject).to_not be_valid
    end

    it 'CommentsCounter must be an integer greater than or equal to zero' do
      subject.comment_count = -1
      expect(subject).to_not be_valid
    end

    it 'LikesCounter must be an integer greater than or equal to zero' do
      subject.like_counter = -1
      expect(subject).to_not be_valid
    end
  end
end
