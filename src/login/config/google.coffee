angular.module 'Scrumble.login'
.config ($authProvider) ->
  $authProvider.google
    clientId: '605908567890-3bg3dmamghq5gd7i9sqsdhvoflef0qku.apps.googleusercontent.com'
    scope: [
      'https://www.googleapis.com/auth/userinfo.email'
      'https://www.googleapis.com/auth/gmail.send'
    ]
    redirectUri: window.location.origin + window.location.pathname
    responseType: 'token'
