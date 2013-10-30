# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create!([
	{
	name: 'Johnny Rockets',
	description: 'Burgers the good ol\' american way',
	address: '123 fake street',
	phone_number: '123_456_7890'
	},

	{
	name: 'Chipotle',
	description: 'Overpriced organic burritoes',
	address: '2354 Vagabond Ave',
	phone_number: '123_456_7890'
	},

	{
	name: 'Mickie Ds',
	description: 'Burgers moving at the speed of light',
	address: '123 Death by Fat Street',
	phone_number: '123_456_7890'
	},

	{
	name: 'The Cheesecake Factory',
	description: 'Misleading name since no one actually comes for only cheesecake',
	address: '123 expensive street',
	phone_number: '123_456_7890'
	},

])
