wintersmith = require('wintersmith')
config  = require('../config.json')
env = wintersmith(config)

module.exports = (gulp) ->
  gulp.task('preview', ->
    env.preview (error, server) ->
      if error
        throw error
      else
        console.log
  )


  gulp.task('build', ->
    env.build()
  )

  
  return gulp
