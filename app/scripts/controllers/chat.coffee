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

    @messages = [
      {
        user: 'ユーザー'
        message: 'メッセージ'
      }
      {
        user: 'ユーザー'
        message: 'メッセージ'
      }
    ]

angular.module 'chappieApp'
  .controller 'ChatCtrl', ChatCtrl
