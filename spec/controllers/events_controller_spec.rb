require 'rails_helper'

RSpec.describe EventsController, type: :controller do

	# POST create. Make sure a new event gets created with a name when JS snippet is triggered
	describe "POST create" do
		it "increases the number of events by 1" do
			expect{post :create, event: {name:}}.to change(Event, :count).by(1)
		end

		it "assigns event to registered application" do
			post :create, {name:}
			expect(assigns(:events)).to eq RegisteredApplication.url
		end
	end
end
