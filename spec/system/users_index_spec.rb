require 'rails_helper'

RSpec.describe 'User index integration tests', type: :system do
  before do
    driven_by(:rack_test)
  end

  before(:all) do
    @users = User.all
  end

  it 'Index page (username, Picture, number of posts and the link to user\' page) of each user' do
    visit users_path
    @users.each do |user|
      expect(page).to have_text(user.name)
      expect(page).to have_link(href: user_path(user.photo))
      expect(page).to have_text(user.posts_counter)
    end
  end
end
