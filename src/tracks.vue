<script lang="coffee">
  module.exports =
    className: "tracks"
</script>

<template>
  <ul class="list-group">
    <li class="list-group-item" v-repeat="tracks">
      <span class="label label-info">{{$index+1}}</span>
      <a href="{{url}}" target="_blank"><span class="track">{{name}}</span></a>
      <span class="artist">{{artist.name}}</span>
      <small class="listeners glyphicon glyphicon-headphones">{{listeners}}</small>
    </li>
  </ul>
</template>

<style lang="stylus">
  .tracks
    .track
      font-size: 20px
      margin-right: 10px
    .artist
      font-size: 14px
      margin-right: 10px
</style>
