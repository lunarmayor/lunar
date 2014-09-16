@Lunar.module "Videos", (Videos, App, Backbone, Marionette) ->

  class Videos.Router extends Marionette.AppRouter
    appRoutes:
      "videos"	: "setupVideos"

  API =
    setupVideos: ->
      Videos.List.Controller.setupVideos()

  App.addInitializer ->
    new Videos.Router
      controller: API