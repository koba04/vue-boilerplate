require('insert-css')(require('./style.css'))

module.exports =
  template: require './template.html'
  methods:
    fetch: (e) ->
      e.preventDefault()
      @$parent.fetchTopTracks()

