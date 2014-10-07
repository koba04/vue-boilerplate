var Vue       = require('vue'),
    director  = require('director')

// register component
Vue.component('top',      require('./top.vue'));
Vue.component('artist',   require('./artist.vue'));
Vue.component('country',  require('./country.vue'));
Vue.component('footer',   require('./footer.vue'));

var app = new Vue(require('./app.vue'));
app.$mount('#app');

// routing
var router = new director.Router();
router.on('artist',   function() { app.view = 'artist';   });
router.on('country',  function() { app.view = 'country';  });
router.on('',         function() { app.view = 'top';      });
router.init();

