@Avatar = new Mongo.Collection 'avatar'

Schema = {}

Schema.avatars = new SimpleSchema
	gender:
		type: String
		allowedValues: [ 'Male', 'Female' ]

	picture:
		type: String
		autoform:
			afFieldInput:
				type: 'fileUpload'
				collection: 'Images'


Avatar.attachSchema Schema.avatars
