class @NullNumberError

class @Calculator
  add: (x, y) ->
    if x is null or y is null
      throw new NullNumberError()

    x + y

  subtract: (x,y) ->
    x - y
