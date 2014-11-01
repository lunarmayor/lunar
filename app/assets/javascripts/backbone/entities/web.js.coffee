@Lunar.module "Entities", (Entities, App) ->
 
  class Entities.Website extends Entities.Model

  class Entities.WebsiteCollection extends Entities.Collection
    model: Entities.Website

   API = 
     getWebsites: ->
       new Entities.WebsiteCollection [
         {title: 'Howard', fileName: 'howard.png', url: 'http://www.howardapp.com'},
         {title: 'Glitch Mirror', fileName: 'glitchmirror.png', url: 'http://glitchmirror.herokuapp.com'},
         {title: 'Flatterbook', fileName: 'flatterbook.png', url: 'http://flatterbook.com'},
         {title: 'Random Gem', fileName: 'random-gem.png', url: 'http://random-gem.herokuapp.com'}

       ]

  App.reqres.setHandler "web:entities", ->
    API.getWebsites()