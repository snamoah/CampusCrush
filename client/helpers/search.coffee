Template.search.events
	'keyup .search': (e) ->
		Profiles.find 'fullName': '$regex': e.currentTarget.value
	
