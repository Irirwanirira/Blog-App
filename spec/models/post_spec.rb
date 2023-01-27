require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Validations For the post model' do
    before(:each) do
      subject { Post.new(Title: 'The Imposible ', comment_count: 10, like_counter: 34) }
    end

    before { subject.save }

    it 'Title should be present' do
      subject.Title = nil
      expect(subject).to_not be_valid
    end

    it 'Title should not exceed 250 characters' do
      subject.Title = nil
      expect(subject).to_not be_valid
    end

    it 'comment_counter should be present' do
      subject.comment_count = nil
      expect(subject).to_not be_valid
    end

    it 'like_counter should be present' do
      subject.like_counter = nil
      expect(subject).to_not be_valid
    end

    it 'comment_count should allow valid values' do
      subject.comment_count = 12
      expect(subject).to_not be_valid
    end
  end
end
