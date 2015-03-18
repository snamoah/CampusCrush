Template.header.helpers
	index: ->
		Router.current().url.split('/')[3] == "" || Router.current().url == '/'
