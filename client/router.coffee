Router.configure 
	layoutTemplate: 'layout'
	trackPageView: true
	notFoundTemplate: 'notfound'

Router.route '/', (->
	index = true
	@render 'root'
), name: 'root'

Router.route '/signin', (->
	@render 'signin'
), name: 'signin'

Router.route '/signup', (->
	@render 'signup'
), name: 'signup'

Router.route '/search', (->
	if Meteor.userId()
		@render 'search'
	else
		@redirect '/signin'
), name: 'search'

Router.route '/inbounds', (->
	if Meteor.userId()
		@render 'inbounds'
	else
		@redirect '/signin'
), name: 'inbounds'

Router.route '/profile', (->
	@render 'profile'
), name: 'profile'

Router.route '/profile/edit', (->
	if Meteor.userId()
		@render 'editProfile'
	else 
		@redirect '/signin'
), name: 'editProfile'
			
Router.route '/home', (->
	if Meteor.userId()
		@render 'home'
	else
		@redirect 'signin'
), name: 'home'

Router.route '/profile/:_id/view', (->
	if Meteor.userId()
		@render 'profileView'
	else
		@redirect 'signin'
), 
	name: 'profileView'
	data: ->
		_id = this.params._id
		return profile: Profiles.findOne(createdBy: _id)

Router.route '/signout', (->
	Meteor.logout()
	@redirect '/'
), name: 'signout'			

