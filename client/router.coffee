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

Router.route '/profile', (->
	@render 'profile'
), name: 'profile'

Router.route '/profile/edit', (->
	@render 'editProfile'
), name: 'editProfile'
			
Router.route '/home', (->
	@render 'home'
), name: 'home'


Router.route '/signout', (->
	Meteor.logout()
	@redirect '/'
), name: 'signout'			

