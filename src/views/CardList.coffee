R = React.DOM
cx = React.addons.classSet

Card = require './Card'

module.exports = React.createClass
  displayName: 'CardList'
  render: ->
    className = cx
      'cardList': true
      'cardListFull': @props.fullText
    R.div {className}, @props.cards.map (el) =>
      Card _.merge el, key: "card#{el.id}", showFullText: @props.fullText
