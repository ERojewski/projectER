require "rails_helper"
!
RSpec.describe Comment, type: :model do
	it 'should have :comment_content, :comment_author' do
		expect(subject.attributes).to include('comment_content', 'comment_author')
	end

	it 'should require comment_content' do
		expect(Comment.new(comment_content: "")).not_to be_valid
		expect(Comment.new(comment_content: "Comment")).to be_valid
	end

	it "should belong to user" do
		t = Post.reflect_on_association(:user)
		expect(t.macro).to equal :belongs_to
	end

end