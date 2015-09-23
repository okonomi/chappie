angular.module 'chappie'
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "home",
        url: "/"
        templateUrl: "app/main/main.html"
        controller: "MainController"
        controllerAs: "main"
      .state "chat",
        url: "/chat"
        templateUrl: "app/chat/chat.html"
        controller: "ChatController"
        controllerAs: "chat"

    $urlRouterProvider.otherwise '/'
