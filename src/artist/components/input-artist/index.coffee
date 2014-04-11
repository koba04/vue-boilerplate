require('insert-css')(require('./index.styl'))

module.exports =
  template: require './index.html'
  methods:
    fetch: (e) ->
      e.preventDefault()
      @$parent.fetchTopTracks()

