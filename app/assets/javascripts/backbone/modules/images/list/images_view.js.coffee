@Lunar.module 'Images.List', (List, App) ->
  class List.Image extends App.Views.ItemView
    template: 'images/list/templates/_image'
    tagName: 'div'

  class List.Images extends App.Views.CompositeView
    template: 'images/list/templates/images'
    childView: List.Image
    childViewContainer: '.flex-container'