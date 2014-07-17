require "rails_helper"
!
RSpec.describe Post, type: :model do
	it 'should have :content, :author' do
		expect(subject.attributes).to include('content', 'author')
	end

	it 'should require content' do
		expect(Post.new(content: "")).not_to be_valid
		expect(Post.new(content: "Post")).to be_valid
	end

	it "should belong to user" do
		t = Post.reflect_on_association(:user)
		expect(t.macro).to equal :belongs_to
	end

end