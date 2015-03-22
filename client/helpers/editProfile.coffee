Template.editProfile.helpers
	profile: ->
		Profiles.findOne createdBy: Meteor.userId()

Template.editProfile.rendered = ->
	$('.navbar-default').addClass('scrolled')
