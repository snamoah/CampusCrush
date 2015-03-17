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
		type: String
	},

	createdBy: {
		type: String,
		autoValue: function() {
			if(this.Insert) return Meteor.userId();
		},
		autoform: {
			omit: true
		}
	},

	createdAt: {
		type: Date,
		autoValue: function() {
			if(this.Insert) return now()
		},
		autoform: {
			omit: true
		}
	},

	updatedAt: {
		type: Date,
		autoValue: function() {
			if(this.Update) return now()
		},
		autoform: {
			omit: true
		}
	}
})

Profiles.attachSchema(Schema.profile); 
