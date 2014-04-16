class TodoBb.Models.Task extends Backbone.Model

  # win: ->
  #   @set(winner: true)
  #   @save()
  #   @trigger('highlight')
  title: ->
    @get('title')

  date: ->
    date = new Date(@get('task_at'))
    if isNaN date.getTime()
      @get('task_at')
    else
      $.formatDateTime("dd.mm.yy hh:ii", date)