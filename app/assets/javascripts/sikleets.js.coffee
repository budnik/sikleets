window.Sikleets =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    @rtr = new Sikleets.Routers.SikleetsRouter()
    Backbone.history.start
      pushState: true

$(document).ready ->
  Sikleets.initialize()
