class Sikleets.Routers.SikleetsRouter extends Backbone.Router
  routes:
    'more': 'more'
    'favorites': 'favorites'
    '*notfound': 'index'

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

  favorites: ->
    if $('#tweets').html()

    else
      $('#main-content .header h1').html 'you have no favorites'

  index: ->
    timeline = new Sikleets.Collections.Timeline()
    timeline.fetch().success =>
      @tweets = new Sikleets.Views.SikleetsIndex collection: timeline
      $('#main-content').html @tweets.render().el
