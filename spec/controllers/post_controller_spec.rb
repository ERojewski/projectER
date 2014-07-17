require "rails_helper"
!
RSpec.describe PostsController, type: :controller do
	
	describe "GET #index" do
	end

	it 'redirects after creater post' do
		post :create, post: {content: "post"}
		expect(response).to redirect_to(animals_path)
	end
end