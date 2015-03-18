Router.configure layoutTemplate: 'layout'

Router.route '/', (->
	@render 'signin'
), 
	name: 'root'
	data: homepage: true

Router.route '/search', (->
	@render 'search'
), name: 'search'

Router.route '/profile', (->
	@render 'profile'
), name: 'profile'

Router.route '/home', (->
	@render 'home'
), name: 'home'


Router.route '/signout', (->
	Meteor.logout()
	Router.go 'root'
), name: 'signout'			
