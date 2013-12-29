module.exports = (grunt) ->

  grunt.initConfig
    coffee :
      devCompile :
        options  :
          bare   : false
          sourceMap    : true
          sourceMapDir : 'assets/js/maps/'
        files    : 
          "assets/js/base.js":"coffee/base.coffee"
    stylus :
      devCompile :
        options :
          use : [
            require 'nib'
          ]
        files : 
          "assets/css/desktop.css":"stylus/desktop.styl"
          "assets/css/mobile.css":"stylus/mobile.styl"
    watch :
      files : ["**/*.coffee", "**/*.styl"]
      tasks : ['coffee','stylus']

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-concat'
  grunt.loadNpmTasks 'grunt-contrib-stylus'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  
  grunt.registerTask 'default', [
    'coffee:devCompile'
  ]