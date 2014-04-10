require('insert-css')(require('./style.css'))

Vue = require 'vue'
module.exports = Vue.extend
  template: require './template.html'

