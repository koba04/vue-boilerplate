require('insert-css')(require('./app.css'))
$ = require('jquery');

var Vue = require('vue')
new Vue({
  el: '#js-app',
  components: {
      "input-artist": require('./components/input-artist/index.coffee'),
      "tracks": require('./components/tracks/index.coffee')
  },
  template: require('./app.html'),
  data: {
    artist: "radiohead",
    tracks: []
  },
  methods: {
    fetchTopTracks: function(e) {
      e.preventDefault();
      var that = this;
      $.ajax({
        url: "http://ws.audioscrobbler.com/2.0/?api_key=b867bf0fdfe95e6c6dc31a275535f765&format=json",
        dataType: "json",
        data: {
          method: "artist.gettoptracks",
          artist: this.artist,
        }
      }).done(function(data) {
        that.tracks = data.toptracks.track
      });
    },
  },
})
