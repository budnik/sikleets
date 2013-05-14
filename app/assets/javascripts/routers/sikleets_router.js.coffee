class Sikleets.Routers.SikleetsRouter extends Backbone.Router
  routes:
    '': 'index'
    'more': 'more'
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
      favs = new Sikleets.Collections.Timeline @timeline.where favorite: true
      console.log favs.toJSON()
      modal = new Sikleets.Views.FavoritesModal
        collection: favs
      $(modal.render().el).appendTo($('body')).modal()

  index: ->
    @timeline = new Sikleets.Collections.Timeline
    @timeline.fetch().success =>
      tweets = new Sikleets.Views.SikleetsIndex collection: @timeline
      $('#main-content').html tweets.render().el

  notFound: ->
    @navigate '/', trigger: false