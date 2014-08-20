
module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    coffeelint:
      app:
        files:
          src: [
            'Gruntfile.coffee'
            'src/**/*.coffee'
            'test/**/*.coffee'
          ]
      options:
        max_line_length:
          level: 'ignore'
    simplemocha:
      all:
        src: ['test/**/*.coffee']
      options:
        reporter: 'nyan'
        globals: ['should']
        ui: 'bdd'
    coffee:
      compile:
        files:'lib/PalindromeAnalysis.js': 'src/PalindromeAnalysis.coffee',
        'lib/PalindromeAnalysis-test.js': 'test/PalindromeAnalysis-test.coffee',
        'lib/main.js': 'src/main.coffee'
      options:
        bare: yes
    watch:
      scripts:
        files: [
          'Gruntfile.coffee'
          'src/**/*.coffee'
          'test/**/*.coffee'
        ]
      tasks: [
        'coffeelint'
        'coffee'
        'simplemocha'
      ]
      options:
        interrupt: yes

  grunt.loadNpmTasks 'grunt-coffeelint'
  grunt.loadNpmTasks 'grunt-simple-mocha'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', [
    'coffeelint'
    'coffee'
    'simplemocha'
  ]
