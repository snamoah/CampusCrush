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
		false

	remove: (doc, userId) ->
		false
