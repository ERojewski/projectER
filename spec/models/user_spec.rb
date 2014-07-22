require "rails_helper"
!
RSpec.describe User, type: :model do
	it 'should have :email, :encrypted_password' do
		expect(subject.attributes).to include('email', 'encrypted_password')
	end
end