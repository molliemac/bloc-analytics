require 'rails_helper'

RSpec.describe API::EventsController, type: :controller do
	let(:my_app) { RegisteredApplication.create!(name: "My app", url: "www.myapp.com") }
	let(:my_event) { Event.create!(name: "upload") }

	describe "POST events" do
		it "returns status of 200" do
       		(expect(response.status).to eq(200))
     	end
 	end
end
