class Sikleets.Routers.SikleetsRouter extends Backbone.Router
  routes:
    '*notfound': 'index'

  index: ->
    timeline = new Sikleets.Collections.Timeline()
    timeline.fetch().success =>
      tweets = new Sikleets.Views.SikleetsIndex collection: timeline
      $('#main-content').append tweets.render().el
