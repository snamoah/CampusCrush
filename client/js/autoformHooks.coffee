AutoForm.hooks
	insertProfileForm:
		formToDoc: (doc) ->
			console.log doc
			doc.createdBy = Meteor.userId()
			doc.createdAt = new Date()
			doc.updatedAt = new Date()
			doc.fullname = doc.firstname + " " + doc.lastname
			return doc
		onSuccess: (formType, result) ->
			Router.go 'home'

		onError: (formType, result) ->
			console.log result

	insertEmailsForm:
		onSuccess: (formType, result) ->
			$('#emailModal').modal('hide');
			$('#emailSuccess').modal('show');
