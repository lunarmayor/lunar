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
        {fileName: 'hepburn-blue.jpg'},
        {fileName: 'bike-sad.jpg' },
        {fileName: 'bike-sun.jpg' },
        {fileName: 'breakfast.jpg' },
        {fileName: 'bw-sad.jpg' },
        {fileName: 'chicago.jpg'},
        {fileName: 'darkme.jpg'},
        {fileName: 'exploding-head.png'},
        {fileName: 'fractal.jpg'},
        {fileName: 'gpu-cube.gif'},
        {fileName: 'illum.gif'},
        {fileName: 'jumping.gif'}
        {fileName: 'jumping-in.jpg'},
        {fileName: 'kanye.jpg'},
        {fileName: 'neon-stitch.jpg'},
        {fileName: 'neonface.png'},
        {fileName: 'prepping.jpg'},
        {fileName: 'rotating-gem.gif'},
        {fileName: 'stacked-furnature.jpg'}
      ]

  App.reqres.setHandler "image:entities", ->
    API.getImages()