require 'spec_helper'

describe Restaurant do
	it "has a valid factory" do
		FactoryGirl.create(:restaurant).should be_valid
	end
	it "is invalid without a name" do
		FactoryGirl.build(:restaurant, name: nil).should_not be_valid
	end
	it "is invalid without a phone number" do
		FactoryGirl.build(:restaurant, phone_number: nil).should_not be_valid
	end
	it "returns address as a single concatenated string" do
		restaurant = FactoryGirl.create(:restaurant, phone_number: 1234567890, street: "One Liberty Plaza", apt: "12", city: "new York", state: "ny", zip_code: "10003")
		restaurant.address.should == "One Liberty Plaza, 12, new York, ny, 10003"
	end
	it "accepts and returns phone_number as integers" do
		restaurant = FactoryGirl.create(:restaurant, phone_number: 1234567890, street: "One Liberty Plaza", apt: "12", city: "new York", state: "ny", zip_code: "10003")
		restaurant.phone_number.should == 1234567890
	end
end