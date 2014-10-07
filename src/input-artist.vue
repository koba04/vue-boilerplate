<script lang="coffee">
  module.exports =
    inherit: true
    methods:
      fetch: (e) ->
        e.preventDefault()
        @fetchTopTracks()
</script>

<template>
  <form class="form-horizontal" role="form" v-on="submit: fetch" >
    <div class="form-group">
      <label for="js-input-location" class="col-sm-1 control-label">Artist</label>
      <div class="col-sm-11">
        <input type="text" v-model="artist" class="form-control" placeholder="Input Atrist Name" required>
      </div>
    </div>
    <div class="form-group">
      <div class="col-sm-offset-1 col-sm-11">
        <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search">search</span></button>
      </div>
    </div>
  </form>
</template>

<style lang="stylus">
</style>
