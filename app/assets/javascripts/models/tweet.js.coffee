class Sikleets.Models.Tweet extends Backbone.Model
  favorite: false
  get: (attr)->
    value = @[attr]?() || Backbone.Model.prototype.get.call(this, attr)

  timeDistance: ->
    moment(@get "created_at").fromNow()
