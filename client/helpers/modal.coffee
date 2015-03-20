Template.modal.helpers
	crushReceipient: ->
		Profiles.findOne(createdBy: Session.get 'crushReceipient')
	

Template.modal.events
	'click .continue': (e) ->
		$('#crushRequestModal').modal('hide');
		Crushes.insert
			to: this.createdBy
			from: Meteor.userId()
			accepted: 'nd'
			crushType: 'public'

	'click .modal-close': (e) ->
		console.log e
