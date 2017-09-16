require 'rails_helper'

RSpec.describe RegisteredApplication, type: :model do
	let(:user) { User.create!(user: "Mollie", email: "mollie.mcintyre9@gmail.com", password: "baller34")}
	let(:registeredapplication) {RegisteredApplication.create!(name: "My Event", url: "wwww.myevent.com")}

	it { is_expected.to belong_to(:user)}

	describe "attributes" do
		it "has name and url attributes" do
			expect(registeredapplication).to have_attributes(name: "My Event", url: "www.myevent.com")
		end
	end
end
