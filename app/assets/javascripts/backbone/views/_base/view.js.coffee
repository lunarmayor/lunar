@Lunar.module "Views", (Views, App, Backbone, Marionette, $, _) ->
	
	_.extend Marionette.View::,
	
		templateHelpers: ->
			
			linkToVine: (url, width = null) ->
        "<iframe class='vine-embed' src='#{url}' width='#{width || 600}' height='#{width || 600}' frameborder='0'></iframe>"

      imageTag: (fileName) ->
        "<img src='assets/#{fileName}'/>"