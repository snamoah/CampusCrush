Template.home.helpers
	user: ->
		Profiles.findOne(createdBy: Meteor.userId()).firstname
