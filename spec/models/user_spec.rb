require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations For the user model' do
    before(:each) do
      subject { User.new(name: 'Joseph', posts_counter: 3) }
    end

    before { subject.save }

    it 'name should be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'posts_counter should be present' do
      subject.posts_counter = nil
      expect(subject).to_not be_valid
    end

    it 'posts_counter should allow valid values' do
      subject.posts_counter = 34
      expect(subject).to_not be_valid
    end
  end
end
