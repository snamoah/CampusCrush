Router.configure layoutTemplate: 'layout'

Router.route '/', (->
	@render 'signin'
), name: 'root'

Router.route '/search', (->
	@render 'search'
), name: 'search'
