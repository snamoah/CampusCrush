Meteor.users.allow
	insert: (userId, doc) ->
		true

	update: (userId, doc) ->
		false

	remove: (userId, doc) ->

Profiles.allow
	insert: (userId, doc) ->
		true

	update: (userId, doc) ->
		if doc.createdBy == userId
			return true
		false

	remove: (userId, doc) ->
		true
