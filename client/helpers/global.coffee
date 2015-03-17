Template.registerHelper 'objectPronouns', (sex) ->
	if sex == 'Male'
		return 'him'
	else return 'her'
