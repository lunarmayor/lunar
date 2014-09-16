@Lunar.module "Entities", (Entities, App) ->

  class Entities.Video extends Entities.Model

  class Entities.VideoCollection extends Entities.Collection
    model: Entities.Video

  API =
    getVideos: ->
      new Entities.VideoCollection [
        {url: 'https://vine.co/v/MY7OlLuJKBX/embed/simple' },
        {url: 'https://vine.co/v/MxBDDnU3uKz/embed/simple' },
        {url: 'https://vine.co/v/MPgvXXKPrIh/embed/simple'},
        {url: 'https://vine.co/v/MFOBY11100E/embed/simple'},
        {url: 'https://vine.co/v/M6XYKPUtX7P/embed/simple'},
        {url: 'https://vine.co/v/MnA0aQtUBPK/embed/simple'},
        {url: 'https://vine.co/v/MJEhz5uzh6J/embed/simple'},
        {url: 'https://vine.co/v/M57e1YHzDgh/embed/simple'},
        {url: 'https://vine.co/v/MeOvnxmh2ng/embed/simple'},
        {url: 'https://vine.co/v/MMLJt9alvWV/embed/simple'},
        {url: 'https://vine.co/v/MhAFTJp9XOX/embed/simple'},
        {url: 'https://vine.co/v/MhKYO1xav0E/embed/simple'},
        {url: 'https://vine.co/v/MqDJupFUqFQ/embed/simple'},
        {url: 'https://vine.co/v/MAu6rJrBXp3/embed/simple'},
        {url: 'https://vine.co/v/MZ0pKah1DJp/embed/simple'},
        {url: 'https://vine.co/v/MzD3xhXU5M2/embed/simple'},
        {url: 'https://vine.co/v/hKuel2mJZEb/embed/simple'},
        {url: 'https://vine.co/v/hznQ06vLtul/embed/simple'},
        {url: 'https://vine.co/v/b3WAXKvgrir/embed/simple'},


      ]

  App.reqres.setHandler "video:entities", ->
    API.getVideos()