AutoForm.hooks
	insertProfileForm:
		formToDoc: (doc) ->
			console.log doc
			doc.createdBy = Meteor.userId()
			doc.createdAt = new Date()
			doc.updatedAt = new Date()
			doc.picture = Avatar.findOne(gender: doc.gender).picture
			doc.fullname = doc.firstname + " " + doc.lastname
			console.log doc
			return doc
		onSuccess: (formType, result) ->
			Router.go 'home'

		onError: (formType, result) ->
			console.log result

	insertEmailsForm:
		onSuccess: (formType, result) ->
			$('#emailModal').modal('hide')
			Meteor.call 'subscriptionReply', Emails.findOne(result).email 
			$('#emailSuccess').modal('show')

	updateProfileForm:
		onSuccess: (formType, result) ->
			Router.go 'home'
