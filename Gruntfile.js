module.exports = function (grunt) {
  grunt.initConfig({
    shell: {
      build: 'npx ng build',
      container: 'docker run -p 80:80 --name angular-nginx -v "$PWD"/dist/:/usr/share/nginx/html -d nginx'
    }
  });
  grunt.loadNpmTasks('grunt-shell');
  grunt.registerTask('default', ['shell']);
}
