require 'rails_helper'

RSpec.describe "Users", type: :request do
 

  describe "GET /index" do

        #make aget request
        get user_posts_path
 #post to create new post

      #  user['user_id'] = 1
      #  post user_posts, user: {name: 'joseph', bio: "HELLO Rails"}


      before(:each) do
        subject { User.new(name: 'joseph', bio: "HELLO Rails") }
      end
  
      before { subject.save }
  
      it 'Name must not be blank' do
        # check values on the response
        expect(response.body).to include 'user'
        expect(response).to have_http_status(200)
    
      end
 

   

    
   
  end
end
