@Lunar.module "Entities", (Entities, App) ->

  class Entities.Image extends Entities.Model

  class Entities.ImageCollection extends Entities.Collection
    model: Entities.Image

  API =
    getImages: ->
      new Entities.ImageCollection [
        {fileName: 'demon.png' },
        {fileName: 'hepburn.png' },
        {fileName: 'more.png' },
        {fileName: 'meblue.png' },
        {fileName: 'hepburn-blue.jpg'}
      ]

  App.reqres.setHandler "image:entities", ->
    API.getImages()