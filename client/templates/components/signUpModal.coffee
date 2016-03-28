Template.signUpModal.onRendered ->
  $('#googleButton').click ->
    Meteor.loginWithGoogle {}, (err) ->
      if err
        console.log err
      else
        $('#signUpModal').modal('hide')
  $('#facebookButton').click ->
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