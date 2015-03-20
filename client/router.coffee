Router.configure 
	layoutTemplate: 'layout'
	trackPageView: true

Router.route '/', (->
	index = true
	@render 'root'
), name: 'root'

Router.route '/signin', (->
	@render 'signin'
), name: 'signin'

Router.route '/search', (->
	@render 'search'
), name: 'search'

Router.route '/inbounds', (->
	@render 'inbounds'
), name: 'inbounds'
Router.route '/profile', (->
	@render 'profile'
), name: 'profile'

Router.route '/profile/edit', (->
	@render 'editProfile'
), name: 'editProfile'
			
Router.route '/home', (->
	@render 'home'
), name: 'home'

Router.route '/profile/:_id/view', (->
	@render 'profileView'
), 
	name: 'profileView'
	data: ->
		_id = this.params._id
		return profile: Profiles.findOne(createdBy: _id)


Router.route '/signout', (->
	Meteor.logout()
	@redirect '/'
), name: 'signout'			

