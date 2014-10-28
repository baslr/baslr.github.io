

data = []

$.get '/fu/data.json', (dataIn) ->
  data = dataIn

  console.log(dataIn);

($ 'BUTTON#submitButton').click () ->
  number = Number ($ 'INPUT#inputField').val()
  list   = [number]

  out = []

  while item = list.shift()

    list.push.apply list, data[item] if data[item]
    out.push.apply  out,  data[item] if data[item]

  out.sort (a, b) -> Number(a) - Number(b)

  console.log out
