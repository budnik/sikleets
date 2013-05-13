class Sikleets.Views.SikleetsRow extends Backbone.View
  template: JST['sikleets/row']
  tagName: 'tr'

  render: ->
    @$el.html @template model: @model
    @
