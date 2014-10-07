<script lang="coffee">
  module.exports =
    components:
      "nav": require './nav.vue'
</script>

<template>
  <link href='http://fonts.googleapis.com/css?family=Playfair+Display+SC&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
  <div class="top">
    <header class="page-header">
      <h1>TopPage</h1>
    </header>
    <div v-component="nav"></div>
    <article>
      <p>Please select artist or country</p>
    </article>
    <div v-component="footer"></div>
  </div>
</template>

<style lang="stylus">
.top
  h1
    font-family: 'Playfair Display SC', serif
</style>
