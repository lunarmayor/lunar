@Lunar.module 'Graphic.Art', (Art, App) ->

  Art.Controller =
    setupGraphic: ->
      graphicView = new Art.Graphic()
      App.mainRegion.show(graphicView)