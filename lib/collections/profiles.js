Profiles = new Mongo.Collection('profile')

var Schema = {}

Schema.profile = new SimpleSchema({
	firstname: {
		type: String,
		max: 50
	},

	lastname: {
		type: String,
		max: 50
	},
	
	fullname: {
		type: String,
		max: 200,
		autoform: {
			omit: true
		}
	},

	username: {
		type: String,
		max: 70
	},

	gender: {
		type: String,
		allowedValues: [ 'Male', 'Female' ]
	},

	picture: {
		type: String,
		autoform: {
			afFieldInput: {
				type: 'fileUpload',
				collection: 'Images'
			},
			omit: true
		}
	},

	createdBy: {
		type: String,
		autoform: {
			omit: true
		}
	},

	createdAt: {
		type: Date,
		autoform: {
			omit: true
		}
	},

	updatedAt: {
		type: Date,
		autoform: {
			omit: true
		}
	}
})

Profiles.attachSchema(Schema.profile); 
