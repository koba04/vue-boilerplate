require('insert-css')(require('./style.css'))

Vue     = require 'vue'
request = require 'superagent'

module.exports = Vue.extend
  template: require './template.html'
  components:
    "select-country": require './components/select-country/index.coffee'
    "tracks":         require '../tracks/index.coffee'
  data:
    countries: ['Japan', 'United States', 'United Kingdom'],
    selectCountry: 'Japan'
    tracks: []
  methods:
    fetchTopTracks: ->
      request.get(
        "http://ws.audioscrobbler.com/2.0/?api_key=b867bf0fdfe95e6c6dc31a275535f765&format=json&method=geo.gettoptracks&country=#{encodeURIComponent(@selectCountry)}"
        (res) =>
          @tracks = res.body.toptracks.track
      )

