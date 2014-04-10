require('insert-css')(require('./style.css'))

Vue     = require 'vue'
request = require 'superagent'

module.exports = Vue.extend
  template: require './template.html'
  components:
    "input-artist": require './components/input-artist/index.coffee'
    "tracks":       require '../tracks/index.coffee'
  data:
    artist: "radiohead"
    tracks: []
  methods:
    fetchTopTracks: ->
      request.get(
        "http://ws.audioscrobbler.com/2.0/?api_key=b867bf0fdfe95e6c6dc31a275535f765&format=json&method=artist.gettoptracks&artist=#{@artist}"
        (res) =>
          @tracks = res.body.toptracks.track
      )
