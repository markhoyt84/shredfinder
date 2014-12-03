define([
  'config',
  'controllers/NavbarController',
  'controllers/ProfileController',
  'controllers/LandingController',
  ],

  function(
    config,
    NavbarController,
    ProfileController,
    LandingController
    ) {

  var app = angular.module('skateFinder', ['ngRoute']);

    app.config(config).run(function($rootScope){
    });

    app.controller('NavbarController', ['$scope',NavbarController]);
    app.controller('ProfileController', [ProfileController]);
    app.controller('LandingController', [LandingController]);
  });