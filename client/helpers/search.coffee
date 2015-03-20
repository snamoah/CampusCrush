Template.search.events
	'keyup .search': (e) ->
		Session.set 'searchResults', true
		Session.set 'filter', e.currentTarget.value

		if e.currentTarget.value == ''
			$('.col-md-12').html("")


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

	'searchResults': ->
		Session.get 'searchResults'

Template.search.rendered = ->
	Session.set 'searchResults', false
