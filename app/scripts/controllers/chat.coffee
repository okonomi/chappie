'use strict'

###*
 # @ngdoc function
 # @name chappieApp.controller:ChatCtrl
 # @description
 # # ChatCtrl
 # Controller of the chappieApp
###

class ChatCtrl
  ### @ngInject ###
  constructor: () ->
    @awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

angular.module 'chappieApp'
  .controller ChatCtrl
