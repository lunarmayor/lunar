@Lunar.module "Graphic", (Graphic, App, Backbone, Marionette) ->

  class Graphic.Router extends Marionette.AppRouter
    appRoutes:
      ""	: "setupGraphic"

  API =
    setupGraphic: ->
      Graphic.Art.Controller.setupGraphic()

  App.addInitializer ->
    new Graphic.Router
      controller: API