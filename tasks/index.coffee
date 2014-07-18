gulp = require('gulp')
chalk = require('chalk')

require('./wintersmith')(gulp)
require('./sass')(gulp)



module.exports = gulp
