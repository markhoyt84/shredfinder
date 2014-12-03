requirejs.config({
  urlArgs: "bust=" + (new Date()).getTime(),

  paths: {
    'jquery': 'vendor/jquery-1.11.1'
  },
});

require(['app'], function() {
  angular.bootstrap(document, ['skateFinder']);
  }
);