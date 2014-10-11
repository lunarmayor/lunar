@Lunar.module 'Web.List', (List, App) ->
  
  List.Controller = 
    setupWebsiteList: ->
      websitesView = new List.Websites(collection: @getWebsites())
      App.mainRegion.show(websitesView)

    getWebsites: ->
      App.request 'web:entities'