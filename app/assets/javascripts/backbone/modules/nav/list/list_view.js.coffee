@Lunar.module 'Nav.List', (List, App) ->
  class List.NavLink extends App.Views.ItemView
    template: 'nav/list/templates/_nav_link'
    tagName: 'li'

  class List.Nav extends App.Views.CompositeView
    template: 'nav/list/templates/nav'
    itemView: List.NavLink
    itemViewContainer: 'ul'