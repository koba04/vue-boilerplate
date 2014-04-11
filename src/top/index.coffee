require('insert-css')(require('./index.styl'))

Vue = require 'vue'
module.exports = Vue.extend
  template: require './index.html'
  className: 'top'

