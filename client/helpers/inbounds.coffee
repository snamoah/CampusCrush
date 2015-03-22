Template.inbounds.helpers
	inbounds: ->
		profiles = []
		a = Crushes.find(to: Meteor.userId(), accepted: 'nd').fetch()
		i = 0
		while i < a.length	
			profiles.push Profiles.findOne createdBy: a[i].from
			i++

		profiles	

Template.inbounds.events
	'click .rejectBtn': ->
		c = Crushes.findOne to: Meteor.userId(), accepted: 'nd', from: this.createdBy
		Crushes.update {_id: c._id}, $set: accepted: 'n'

	'click .acceptBtn': ->
		c = Crushes.findOne to: Meteor.userId(), accepted: 'nd', from: this.createdBy
		Crushes.update {_id: c._id}, $set: accepted: 'y'

Template.inbounds.rendered = ->
	$('.navbar-default').addClass('scrolled')
