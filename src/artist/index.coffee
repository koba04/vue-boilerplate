require('insert-css')(require('./index.styl'))

Vue     = require 'vue'
request = require 'superagent'

module.exports = Vue.extend
  id: "artist"
  template: require './index.html'
  className: "artist"
  components:
    "nav":          require '../nav/index.coffee'
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

