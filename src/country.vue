<script lang="coffee">
  request = require 'superagent'

  module.exports =
    components:
      "nav":            require './nav.vue'
      "select-country": require './select-country.vue'
      "tracks":         require './tracks.vue'
    data: ->
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
</script>

<template>
  <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
  <div class="country">
    <header class="page-header">
      <h1>Country Top Tracks <small>by Last.FM</small></h1>
    </header>
    <div v-component="nav"></div>
    <article class="main-content">
      <div v-component="select-country"></div>
      <div v-component="tracks"></div>
    </article>
    <div v-component="footer"></div>
  </div>
</template>

<style lang="stylus">
.country
  h1
    font-family: 'Roboto Condensed', sans-serif
</style>
