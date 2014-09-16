@Lunar.module "Entities", (Entities, App) ->

  class Entities.Video extends Entities.Model

  class Entities.VideoCollection extends Entities.Collection
    model: Entities.Video

  API =
    getVideos: ->
      new Entities.VideoCollection [
        {url: 'https://vine.co/v/MY7OlLuJKBX/embed/simple' },
        {url: 'https://vine.co/v/MxBDDnU3uKz/embed/simple' }
      ]

  App.reqres.setHandler "video:entities", ->
    API.getVideos()