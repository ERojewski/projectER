require "rails_helper"

RSpec.describe Post, type: :model do
	it 'should have attributes :content' do
		expect(subject.attributes).to include('content')
end