@Lunar.module 'Images.List', (List, App) ->
  class List.Image extends App.Views.ItemView
    template: 'images/list/templates/_image'
    tagName: 'li'

  class List.Images extends App.Views.CollectionView
    childView: List.Image
    className: 'feed-list'
    tagName: 'ul'