require('insert-css')(require('./index.styl'))

module.exports =
  template: require './index.html'
  className: "select-country"
  methods:
    fetch: (e) ->
      e.preventDefault()
      @$parent.fetchTopTracks()

