Template.search.events
	'keydown .search': (e) ->
		Session.set 'filter', e.currentTarget.value
		
	#	if e.currentTarget.value == ''
	#		$('.resultListings').html("")
	#		Session.set 'filter', ''
	#		Session.set 'searchResults', false

	'click .crushBtn': (e) ->
		Session.set 'crushReceipient', this.createdBy
		$('#crushRequestModal').modal()

Template.search.helpers
	'people': -> 
			Profiles.find('fullname': 
				'$regex': Session.get 'filter'
				'$options': 'i'
			).fetch().filter (e) ->
				e.createdBy != Meteor.userId()

	'filter': ->
		Session.get 'filter'

