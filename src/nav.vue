<script lang="coffee">
  module.exports =
    replace: true
</script>

<template>
  <div class="nav-content">
    <ul class="nav nav-pills nav-justified">
      <li v-class="active: $parent.artist"><a href="#artist">Atrist</a></li>
      <li v-class="active: $parent.selectCountry"><a href="#country">Country</a></li>
    </ul>
  </div>
</template>

<style lang="styus">
  .nav-content
    .nav
      margin-bottom: 20px
      border-bottom: solid #eee
</style>
