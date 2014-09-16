@Lunar.module 'Videos.List', (List, App) ->
  class List.Video extends App.Views.ItemView
    template: 'videos/list/templates/_video'
    tagName: 'li'

  class List.Videos extends App.Views.CollectionView
    childView: List.Video
    className: 'feed-list'
    tagName: 'ul'

    onShow: ->
      @$el.append("<script async src='//platform.vine.co/static/scripts/embed.js' charset='utf-8'></script>")