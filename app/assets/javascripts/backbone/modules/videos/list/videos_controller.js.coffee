@Lunar.module 'Videos.List', (List, App) ->

  List.Controller =
    setupVideos: ->
      videosView = new List.Videos(collection: @getVideos())
      App.mainRegion.show(videosView)

    getVideos: ->
      App.request "video:entities"