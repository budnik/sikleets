class Sikleets.Views.SikleetsRow extends Backbone.View
  template: JST['sikleets/row']
  tagName: 'tr'
  events:
    'click td.like>i': 'favorite'

  favorite: (e)->
    @model.set "favorite", !@model.get "favorite"

  render: ->
    @$el.html @template model: @model
    @
