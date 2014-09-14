@Lunar = do (Backbone, Marionette) ->

  App = new Marionette.Application

  App.addRegions
    navRegion: '#nav'
    mainRegion: '#main'

  App.addInitializer ->
    App.module('Nav').start()


  App.on "initialize:after", (options) ->
    if Backbone.history
      Backbone.history.start()


  App