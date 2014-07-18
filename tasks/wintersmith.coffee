wintersmith = require('wintersmith')
config  = require('../config.json')
_ = require('underscore')
env = wintersmith(config)

prod = wintersmith(_.extend(config, {
  locals:
    url: 'http://bassettsj.me/pawssf-styleguide'
  }))

module.exports = (gulp) ->
  gulp.task('preview', ->
    env.preview (error, server) ->
      if error
        throw error
      else
        console.log
  )


  gulp.task('build', ->
    prod.build()
  )


  return gulp
