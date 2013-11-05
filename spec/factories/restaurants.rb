require 'faker'

FactoryGirl.define do
	factory :restaurant do |f|
		f.name {Faker::Name.name}
		f.phone_number {Faker::PhoneNumber.phone_number}
	end
end