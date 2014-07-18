require "rails_helper"
!
RSpec.describe PostsController, type: :controller do

	before(:each) do
		@user=User.create(email: 'test@test.pl', password: 'testpassword')
		sign_in @user
	end

	describe "GET #index" do
	end

	it "renders the index template" do
		get :index
		expect(response).to render_template("index")
	end

end