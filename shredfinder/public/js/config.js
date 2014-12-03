define([], function() {
  function config($routeProvider) {
    $routeProvider
      .when('/', {
        controller: 'LandingController',
        templateUrl: 'views/Login_signup.html'
      })
      .when('/users/:id', {
        controller: 'ProfileController',
        templateUrl: 'views/profile.html'
      });
  }

  config.$inject = ['$routeProvider']

  return config;
});