@Lunar.module 'Web', (Web, App) ->
  
  class Web.Router extends Marionette.AppRouter
    appRoutes: 
      'web': 'setupWebsiteList'
      
  API = 
    setupWebsiteList: ->
      Web.List.Controller.setupWebsiteList()

  App.addInitializer ->
    new Web.Router
      controller: API
