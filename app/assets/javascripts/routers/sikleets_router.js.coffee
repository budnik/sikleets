class Sikleets.Routers.SikleetsRouter extends Backbone.Router
  routes:
    '': 'index'
    'more': 'more'
    'refresh': 'refresh'
    'favorites': 'favorites'
    '*notfound': 'notFound'

  initialize: ->
    @ajaxifyLinks()

  ajaxifyLinks: ->
    $(document).on "click", "a", (event)=>
      href = $(event.currentTarget).attr('href')
      return if href.match /^https?:/
      if !event.altKey && !event.ctrlKey && !event.metaKey && !event.shiftKey
        event.preventDefault()
        url = href?.replace('\#\!\/','')
        @navigate url, trigger: true
      false

  more: ->
    unless $('#tweets').html()
      @navigate '/', trigger: true
    else
      lastTweet = @timeline.min (e)-> e.get "id"
      @timeline.fetch remove: false, data: {older_than: lastTweet.get("id")}
      @navigate '/', trigger: false

  favorites: ->
    unless $('#tweets').html()
      $('#main-content .header h1').html 'you have no favorites'
    else
      favs = @timeline.where favorite: true
      return @refresh() if !favs.length
      collection = new Sikleets.Collections.Timeline favs
      modal = new Sikleets.Views.FavoritesModal
        collection: collection
      $(modal.render().el).appendTo($('body')).modal()

  index: ->
    @timeline = new Sikleets.Collections.Timeline
    @timeline.fetch().success =>
      tweets = new Sikleets.Views.SikleetsIndex collection: @timeline
      $('#main-content').html tweets.render().el

  notFound: ->
    @navigate '/', trigger: false

  refresh: ->
    @navigate '/', trigger: true
