Template.footer.onRendered ->
  Meteor.call 'hideAdsense', (err, hide) ->
    if err
      console.log err
    else
      if !hide
        Adsense.add 'footer'
      else
        $('footer').remove()