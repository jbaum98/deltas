group = (array, group_size) ->
  (array.slice(i,i+group_size) for i in [0..array.length] by group_size)
  
squish = (deltas) ->
  Delta = deltas[0].constructor
  composed = deltas.reduce (previous, current) ->
    previous.compose current
  composed
  
squish_every = (deltas, group_size) ->
  group deltas, group_size
  .map squish