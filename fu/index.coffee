

data = []

$.get '/fu/data.json', (dataIn) -> data = dataIn


($ document).ready () ->
  ($ 'BUTTON#submitButton').click () ->
    console.log 'clicked'
    number = Number ($ 'INPUT#inputField').val()
    list   = [number]

    out = []

    while item = list.shift()

      list.push.apply list, data[item] if data[item]
      out.push.apply  out,  data[item] if data[item]

    out.sort (a, b) -> Number(a) - Number(b)

    console.log out
