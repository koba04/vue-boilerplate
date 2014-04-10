Vue   = require 'vue'
page  = require 'page'

# register component
Vue.component 'top',      require './top/index.coffee'
Vue.component 'artist',   require './artist/index.coffee'
Vue.component 'country',  require './country/index.coffee'

# create App
app = new Vue
  el: '#app'
  data:
    view: "top"

# routing
page '/artist',   -> app.view = 'artist'
page '/country',  -> app.view = 'country'
page '*',         -> app.view = 'top'
page()

