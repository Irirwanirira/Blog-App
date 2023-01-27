require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'Validations For the Like model' do
    before(:each) do
      @like = Like.new(author_id: 4, post_id: 10)
    end

    before { @like }

    it 'when author_id is defined' do
      @like.author_id = false
      expect(@like).to_not be_valid
    end

    it 'when post_id is defined' do
      @like.post_id = nil
      expect(@like).to_not be_valid
    end
  end
end
