Meteor.users.allow
	insert: (doc, userId) ->
		true

	update: (doc, userId) ->
		false

	remove: (doc, userId) ->
		false

Profiles.allow
	insert: (doc, userId) ->
		true

	update: (doc, userId) ->
		console.log doc
		if doc.createdBy == userId
			return true
		false

	remove: (doc, userId) ->
		false
