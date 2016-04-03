Template.signUpModal.onRendered ->
  $('#googleButton').click ->
    Meteor.loginWithGoogle {}, (err) ->
      if err
        console.log err
      else
        $('#signUpModal').modal('hide')
  $('#facebookButton').click ->
    if Meteor.isCordova
      facebookConnectPlugin.login [], (result) ->
        Meteor.call 'log', result
        $('#signUpModal').modal('hide')
      , (err) ->
        Meteor.call 'log', err
        $('#signUpModal').modal('hide')
    else
      Meteor.loginWithFacebook {}, (err) ->
        if err
          console.log err
        else
          $('#signUpModal').modal('hide')
  $('#twitterButton').click ->
    Meteor.loginWithTwitter {}, (err) ->
      if err
        console.log err
      else
        $('#signUpModal').modal('hide')