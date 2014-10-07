<script lang="coffee">
  module.exports =
    replace: true
    inherit: true
    methods:
      fetch: (e) ->
        e.preventDefault()
        @fetchTopTracks()

</script>

<template>
  <div class="select-country">
    <form class="form-horizontal" role="form" v-on="submit: fetch" >
      <div class="form-group">
        <label for="inputCountry" class="col-sm-1 control-label">Country</label>
        <div class="col-sm-5">
          <select v-model="selectCountry" class="form-control">
            <option  v-repeat="countries" value="{{$value}}">{{$value}}</option>
          </select>
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-1 col-sm-11">
          <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search">search</span></button>
        </div>
      </div>
    </form>
  </div>
</template>

<style lang="stylus">
</style>
