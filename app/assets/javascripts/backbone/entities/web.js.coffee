@Lunar.module "Entities", (Entities, App) ->
 
  class Entities.Website extends Entities.Model

  class Entities.WebsiteCollection extends Entities.Collection
    model: Entities.Website

   API = 
     getWebsites: ->
       new Entities.WebsiteCollection [
         {title: 'Howard'},
         {title: 'Glitch Mirror'},
         {title: 'Flatterbook'},
         {title: 'Random Gem'},
         {title: 'Eye Cubes'}

       ]

  App.reqres.setHandler "web:entities", ->
    API.getWebsites()