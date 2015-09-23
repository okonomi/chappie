'use strict'

###*
 # @ngdoc function
 # @name chappieApp.controller:ChatCtrl
 # @description
 # # ChatCtrl
 # Controller of the chappieApp
###

class ChatCtrl
  comments: []

  ### @ngInject ###
  constructor: ($http) ->

    $http.get(
      'http://localhost:8080/comments'
    ).success((data, status, headers, config) =>
      @comments = data
    )

angular.module 'chappieApp'
  .controller 'ChatCtrl', ChatCtrl
