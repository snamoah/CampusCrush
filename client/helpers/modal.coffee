Template.modal.helpers
	crushReceipient: ->
		Profiles.findOne(createdBy: Session.get 'crushReceipient')


Template.modal.events
	'click .continue': (e) ->
		$('#crushRequestModal').modal('hide');
		console.log "Continued to make crush happen"
		Crushes.insert
			to: this.createdBy
			from: Meteor.userId()
			createdAt: new Date()
