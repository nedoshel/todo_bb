class TodoBb.Views.TasksIndex extends Backbone.View

  template: JST['tasks/index']

  events:
    'submit #new_task': 'createTask'


  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendTask, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendTask)
    this

  appendTask: (task) =>
    view = new TodoBb.Views.Task(model: task)
    @$('#tasks').append(view.render().el)


  # drawWinner: (event) ->
  #   event.preventDefault()
  #   @collection.drawWinner()

  createTask: (event) ->
    event.preventDefault()
    attributes = Backbone.Syphon.serialize this
    @collection.create attributes,
      wait: true
      success: -> $('#new_task')[0].reset()
      error: @handleError

  handleError: (task, response) ->
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      window.showFlashMessage(errors, { type: 'danger' })