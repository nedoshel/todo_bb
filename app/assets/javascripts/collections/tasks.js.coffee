class TodoBb.Collections.Tasks extends Backbone.Collection
  url: '/api/tasks'
  model: TodoBb.Models.Task

  # drawWinner: ->
  #   winner = @shuffle()[0]
  #   winner.win() if winner