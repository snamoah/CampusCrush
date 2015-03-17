Profiles = new Mongo.Collection('profiles')

Schema = {}

Schema.profile = new SimpleSchema(
	firstname: 
		type: String,
		max: 50

	lastname:
		type: String,
		max: 50

	username:
		type: String,
		max: 70

	gender:
		type: String,
		allowedValues: [ 'Male', 'Female' ]
	
	picture:
		type: String

	createdBy:
		type: String,
		autoValue: ->
			if @Insert
				return Meteor.userId()
)

Profiles.attachSchema Schema.profile
