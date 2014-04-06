require('insert-css')(require('./app.css'))

Vue = require 'vue'
$   = require 'jquery'

module.exports = Vue.extend
  template: require './app.html'
  components:
    "input-artist": require './components/input-artist/index.coffee'
    "tracks":       require './components/tracks/index.coffee'
  data:
    artist: "radiohead"
    tracks: []
  methods:
    fetchTopTracks: ->
      $.ajax
        url: "http://ws.audioscrobbler.com/2.0/?api_key=b867bf0fdfe95e6c6dc31a275535f765&format=json"
        dataType: "json"
        data:
          method: "artist.gettoptracks"
          artist: @artist
      .done (data) =>
        @tracks = data.toptracks.track

