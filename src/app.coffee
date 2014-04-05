require('insert-css')(require('./app.css'))
$ = require 'jquery'

Vue = require 'vue'
new Vue
  el: '#app'
  components:
      "input-artist": require './components/input-artist/index.coffee'
      "tracks": require './components/tracks/index.coffee'
  template: require './app.html'
  data:
    artist: "radiohead"
    tracks: []
  methods:
    fetchTopTracks: (e) ->
      e.preventDefault()
      $.ajax
        url: "http://ws.audioscrobbler.com/2.0/?api_key=b867bf0fdfe95e6c6dc31a275535f765&format=json"
        dataType: "json"
        data:
          method: "artist.gettoptracks"
          artist: @artist
      .done (data) =>
        @tracks = data.toptracks.track

