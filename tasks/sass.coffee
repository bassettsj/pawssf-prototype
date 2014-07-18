sass = require('gulp-sass')

module.exports =  (gulp) ->
  gulp.task 'sass', ->
    gulp.src('./scss/*.scss')
    .pipe(sass({
      includePaths: [
        'node_modules',
        ]
      }))
    .pipe(gulp.dest('./contents/css'))
