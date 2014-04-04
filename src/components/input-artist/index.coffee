require('insert-css')(require('./style.css'))

module.exports = {
    id: 'a',
    template: require('./template.html')
    data:
      msg: 'I am component A! coffee'
}
