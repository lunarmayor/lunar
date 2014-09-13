@Lunar.module "Entities", (Entities, App,) ->

  class Entities.NavLink extends Entities.Model

  class Entities.NavLinkCollection extends Entities.Collection
    model: Entities.NavLink

  API =
    getNavLinks: ->
      new Entities.NavLinkCollection [
        { name: "images" }
        { name: "video" }
        { name: "text" }
        { name: "web" }
      ]

  App.reqres.addHandler "nav:entities", ->
    API.getNavLinks()