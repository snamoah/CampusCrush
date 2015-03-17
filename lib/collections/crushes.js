Crushes = new Mongo.Collection("crushes")

var Schema = {}

Schema.crushes = new SimpleSchema({
	to: {
		type: String
	},

	from: {
		type: String
	},

	createdAt: {
		type: Date,
		autoValue: function() {
			if(this.Insert) {
				 return now();
			}
		}
	}
});

Crushes.attachSchema(Schema.crushes);
