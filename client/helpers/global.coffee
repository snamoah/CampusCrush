Template.registerHelper 'objectPronouns', (sex) ->
	if sex == 'Male'
		return 'him'
	else return 'her'

Template.registerHelper 'user', ->
	Meteor.user()

Template.registerHelper 'index', ->
	Router.current().url.split('/')[3] == "" || Router.current().url == '/'

Template.registerHelper 'getImageUrl', (id) ->
	Images.findOne(id).url
