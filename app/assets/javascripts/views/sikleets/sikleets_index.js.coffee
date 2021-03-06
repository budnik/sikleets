class Sikleets.Views.SikleetsIndex extends Backbone.View
  template: JST['sikleets/index']
  tagName: 'table'
  className: 'table table-hover'
  id: 'tweets'
  initialize: ->
    @collection.on "sync", @render, @
    @collection.on "change", @render, @

  render: ->
    @$el.html @template
    @collection.each @renderRow
    @

  renderRow: (r)=>
    row = new Sikleets.Views.SikleetsRow model: r
    @$('tbody').append row.render().el

