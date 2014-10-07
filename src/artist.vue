<script lang="coffee">
  request = require 'superagent'

  module.exports =
    components:
      "nav":          require './nav.vue'
      "input-artist": require './input-artist.vue'
      "tracks":       require './tracks.vue'
    data: ->
      artist: "radiohead"
      tracks: []
    methods:
      fetchTopTracks: ->
        request.get(
          "http://ws.audioscrobbler.com/2.0/?api_key=b867bf0fdfe95e6c6dc31a275535f765&format=json&method=artist.gettoptracks&artist=#{encodeURIComponent(@artist)}"
          (res) =>
            @tracks = res.body.toptracks.track
        )
</script>

<template>
  <link href='http://fonts.googleapis.com/css?family=Poiret+One&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
  <div class="artist">
    <header class="page-header">
      <h1>Artist Top Tracks <small>by Last.FM</small></h1>
    </header>
    <div v-component="nav"></div>
    <article class="main-content">
      <div v-component="input-artist"></div>
      <div v-component="tracks"></div>
    </article>
    <div v-component="footer"></div>
  </div>
</template>

<style lang="stylus">
.artist
  h1
    font-family: 'Poiret One', cursive
</style>
