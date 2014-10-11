@Lunar.module 'Web.List', (List, App) ->
  class List.Website extends App.Views.ItemView
    template: 'web/list/templates/_website'
    tagName: 'li'

  class List.Websites extends App.Views.CollectionView
    childView: List.Website
    className: 'feed-list'
    tagName: 'ul'