@utils = {}

utils.string =
  toUpperCase: (string) -> string.substr(0, 1).toUpperCase() + string.substr(1)

utils.calculate =
  modifier: (score) -> Math.floor (score - 10) / 2

utils.RegExp =
  escape: (s) -> s.replace(/[-\/\\^$*+?.()|[\]{}]/g, '\\$&')

utils.format =
  range: (range) ->
    if range == 0
      return 'Self'
    else if range == 5
      return 'Touch'
    else if range == -1
      return 'Sight'
    else if range == -1000
      return 'Unlimited'
    else if range == 5280
      return '1 Mile'
    else
      return range + ' feet'
  reverseRange: (range) ->
    if range == 'Self'
      return 0
    else if range == 'Touch'
      return 5
    else if range == 'Sight'
      return -1
    else if range == 'Unlimited'
      return -1000
    else if range == '1 Mile'
      return 5280
    else
      return range