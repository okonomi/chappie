'use strict'

class ChatController
  comments: []

  ### @ngInject ###
  constructor: ($http) ->

    $http.get(
      'http://localhost:8080/comments'
    ).success((data, status, headers, config) =>
      @comments = data
    )

angular.module 'chappie'
  .controller 'ChatController', ChatController
