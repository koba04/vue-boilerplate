<script lang="coffee">
  Vue   = require 'vue'
  director = require 'director'

  # register component
  Vue.component 'top',      require './top.vue'
  Vue.component 'artist',   require './artist.vue'
  Vue.component 'country',  require './country.vue'

  Vue.partial 'footer', require './partials/footer.html'

  app = new Vue
    el: '#app'
    className: "container"
    data:
      view: "top"

  # routing
  router = new director.Router
  router.on 'artist',  -> app.view = 'artist'
  router.on 'country', -> app.view = 'country'
  router.on '',        ->
    console.log "call"
    app.view = 'top'
  router.init()
</script>

<template>
  <div v-view="view" v-animation></div>
</template>

<style lang="stylus">
  #app
    .v-enter
      -webkit-animation: fadein 0.5s
      -webkit-animation-delay: 0.2s
      animation: fadein 0.5s
      animation-delay: 0.2s
      opacity: 0
    .v-leave
      -webkit-animation: fadeout 0.2s
      animation: fadeout 0.2s

  @keyframes fadein
    0%
      transform: scale(0.5)
      -webkit-transform: scale(0.5)
      opacity: 0
    50%
      transform: scale(1.2)
      -webkit-transform: scale(1.2)
      opacity: 0.7
    100%
      transform: scale(1)
      -webkit-transform: scale(1)
      opacity: 1

  @keyframes fadeout
    0%
      transform: scale(1)
      -webkit-transform: scale(1)
    100%
      transform: scale(0)
      -webkit-transform: scale(0)
</style>
