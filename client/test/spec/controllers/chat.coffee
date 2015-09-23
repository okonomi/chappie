'use strict'

describe 'Controller: ChatCtrl', ->

  # load the controller's module
  beforeEach module 'chappieApp'

  ChatCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ChatCtrl = $controller 'ChatCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(ChatCtrl.awesomeThings.length).toBe 3
