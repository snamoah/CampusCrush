Profiles = new Mongo.Collection('profiles')

Schema = {}

Schema.profile = new SimpleSchema
	firstname: 
		type: String
		max: 50

	lastname:
		type: String
		max: 50

	fullName:
		type: String
		max: 200
		autoform:
			omit: true

	username:
		type: String
		max: 70

	gender:
		type: String
		allowedValues: [ 'Male', 'Female' ]
		label: "What's your gender"
	
	picture:
		type: String
 		autoform: afFieldInput:
    	type: 'fileUpload'
    	collection: 'images'
		label: 'Choose file'

	createdBy:
		type: String
		autoValue: ->
			if @Insert
				return Meteor.userId()
		autoform:
			omit: true

	updatedAt:
		type: String
		autoValue: ->
			if @Update
				return Meteor.userId()
		autoform:
			omit: true
		optional: true


Profiles.attachSchema Schema.profile
