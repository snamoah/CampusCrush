Meteor.methods subscriptionReply: (email) ->
		content = "Hi, Thank you for signing for beta testing CampusCrush. You'll be sent an email when it is launched."

		Email.send
			to: email
			from: 'noreply@campuscrush.meteor.com'
			subject: 'Welcome to CampusCrush'
			html: content 
