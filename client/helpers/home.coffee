Template.home.helpers
	crushesResponsePending: ->
		Crushes.find(to: Meteor.userId(), accepted: 'nd').count()
	
	crushes: ->
		Crushes.find(from: Meteor.userId()).count()
