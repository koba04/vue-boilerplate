Vue   = require 'vue'
director = require 'director'

# register component
Vue.component 'top',      require './top/index.coffee'
Vue.component 'artist',   require './artist/index.coffee'
Vue.component 'country',  require './country/index.coffee'

Vue.partial 'footer', require './partials/footer.html'

# create App
require('insert-css')(require('./index.styl'))
app = new Vue
  el: '#app'
  className: "container"
  template: require './index.html'
  data:
    view: "top"

# routing
router = new director.Router
router.on 'artist',  -> app.view = 'artist'
router.on 'country', -> app.view = 'country'
router.on '',        -> app.view = 'top'
router.init()

