@Lunar.module "Entities", (Entities, App) ->

  class Entities.NavLink extends Entities.Model

  class Entities.NavLinkCollection extends Entities.Collection
    model: Entities.NavLink

  API =
    getNavLinks: ->
      new Entities.NavLinkCollection [
        { name: "video", url: '/videos' }
        { name: "images", url: '/images' }
        { name: "web", url: '/web' }
      ]

  App.reqres.setHandler "nav:entities", ->
    API.getNavLinks()