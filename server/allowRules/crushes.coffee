Crushes.allow 
	insert: (userId, doc) ->
		true

	update: (userId, doc) ->
		if doc.to == userId or doc.from == userId
			true
