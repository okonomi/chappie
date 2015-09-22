'use strict'

###*
 # @ngdoc overview
 # @name chappieApp
 # @description
 # # chappieApp
 #
 # Main module of the application.
###
angular
  .module 'chappieApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/chat.html'
        controller: 'ChatCtrl'
        controllerAs: 'chat'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
        controllerAs: 'about'
      .otherwise
        redirectTo: '/'
