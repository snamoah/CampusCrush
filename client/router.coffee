Router.configure layoutTemplate: 'layout'

Router.route '/', (->
	@render 'signin'
), name: 'root'
