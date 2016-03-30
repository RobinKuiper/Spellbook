@utils = {}

utils.RegExp =
  escape: (s) -> s.replace(/[-\/\\^$*+?.()|[\]{}]/g, '\\$&')
