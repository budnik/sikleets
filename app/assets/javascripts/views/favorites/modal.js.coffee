class Sikleets.Views.FavoritesModal extends Backbone.View
  template: JST['favorites/modal']
  rowTemplate: JST['favorites/row']
  attributes:
    class: 'modal hide fade'
    id: 'favorite-tweets'
    tabindex: -1
    'aria-labelledby': 'bulkModalLabel'
    'aria-hidden': true
  events:
    'click button.close': 'goBack'

  render: ->
    @$el.html @template
    @collection.each @renderRow, @
    @

  renderRow: (r)->
    @$('tbody').append @rowTemplate r

  goBack: ->
    @$el.modal 'hide'
    @remove()
    Sikleets.rtr.navigate '/', trigger: false