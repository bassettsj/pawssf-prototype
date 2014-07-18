browserify = require('gulp-browserify')
rename = require('gulp-rename')


module.exports = (gulp) ->
  gulp.task('scripts', ->
    gulp.src('./scripts/index.coffee', {read: false})
    .pipe(browserify({
      transform: ['coffeeify']
      extensions: ['.coffee']
    }))
    .pipe(rename('pawssf.pkg.js'))
    .pipe(gulp.dest('./contents/js'))
  )
