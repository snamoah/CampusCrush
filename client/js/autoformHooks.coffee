AutoForm.hooks
	insertProfileForm: 
		formToDoc: (doc) ->
			console.log doc
			doc.createdBy = Meteor.userId()
			doc.createdAt = new Date()
			doc.updatedAt = new Date()
			doc.fullname = doc.firstname + " " + doc.lastname
			console.log doc
			return doc
		onSuccess: (formType, result) ->
			console.log "Entered successfully"
			Router.go 'home'

		onError: (formType, result) ->
			console.log result
