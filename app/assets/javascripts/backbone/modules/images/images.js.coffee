@Lunar.module "Images", (Images, App, Backbone, Marionette) ->

  class Images.Router extends Marionette.AppRouter
    appRoutes:
      "images"	: "setupImages"

  API =
    setupImages: ->
      Images.List.Controller.setupImages()

  App.addInitializer ->
    new Images.Router
      controller: API