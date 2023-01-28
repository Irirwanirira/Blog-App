require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations For the user model' do
    before(:each) do
      subject { User.new(name: 'Joseph', posts_counter: 3) }
    end

    before { subject.save }

    it 'Name must not be blank' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'CommentsCounter must be an integer' do
      subject.posts_counter = ''
      expect(subject).to_not be_valid
    end

    it 'CommentsCounter must be an integer greater than or equal to zero' do
      subject.posts_counter = -1
      expect(subject).to_not be_valid
    end
  end
end
