@Lunar = do (Backbone, Marionette) ->

  App = new Marionette.Application

  App.addRegions
    navRegion: '#nav'
    mainRegion: {regionClass: Marionette.Region.TransitionRegion, selector: "#main"}

  App.addInitializer ->
    App.module('Nav').start()

  App.on "start", (options) ->
    if Backbone.history
      Backbone.history.start({pushState: true})

  App.vent.on('change:route', (model) ->
    Backbone.history.navigate(model.get('url'), true)
  )

  App.vent.on('visit:root', ->
    Backbone.history.navigate('', true)
  )

  App