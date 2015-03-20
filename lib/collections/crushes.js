Crushes = new Mongo.Collection("crushes")

var Schema = {}

Schema.crushes = new SimpleSchema({
	to: {
		type: String
	},

	from: {
		type: String
	},
	
	crushType: {
		type: String,
		allowedValues: ['public', 'private']
	},

	accepted: {
		type: String,
		allowedValues: [ 'nd', 'y', 'n' ]
	},
	
	createdAt: {
		type: Date,
		autoValue: function() {
			if(this.isInsert) {
				 return new Date();
			}
		}
	}
});

Crushes.attachSchema(Schema.crushes);
