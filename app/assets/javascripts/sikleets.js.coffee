window.Sikleets =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Sikleets.Routers.SikleetsRouter()
    Backbone.history.start
      pushState: true
      root: '/'

$(document).ready ->
  Sikleets.initialize()
