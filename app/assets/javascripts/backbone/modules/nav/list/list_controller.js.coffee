@Lunar.module 'Nav.List', (List, App) ->

  List.Controller =
    setupNav: ->
      navView = new List.Nav({collection: @getLinks()})
      App.navRegion.show(navView)

    getLinks: ->
      App.request "nav:entities"