@Lunar.module 'Images.List', (List, App) ->

  List.Controller =
    setupImages: ->
      imagesView = new List.Images(collection: @getImages())
      App.mainRegion.show(imagesView)

    getImages: ->
      App.request "image:entities"