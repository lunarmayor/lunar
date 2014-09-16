@Lunar.module "Views", (Views, App, Backbone, Marionette, $, _) ->
	
	_.extend Marionette.View::,
	
		templateHelpers: ->
			
			urlToVine: (url, width = null) ->
        "<iframe class='vine-embed' height='600' width='600' src='#{url}' frameborder='0'></iframe>"

      imageTag: (fileName) ->
        "<img src='assets/#{fileName}'/>"

