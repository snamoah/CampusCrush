Template.registerHelper 'objectPronouns', (sex) ->
	if sex == 'Male'
		return 'him'
	else return 'her'

Template.registerHelper 'user', ->
	Meteor.user()
