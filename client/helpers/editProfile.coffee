Template.editProfile.helpers
	profile: ->
		Profiles.findOne createdBy: Meteor.userId()
