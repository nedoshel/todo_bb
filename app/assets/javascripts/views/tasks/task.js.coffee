class TodoBb.Views.Task extends Backbone.View
  template: JST['tasks/task']
  tagName: 'tr'

  events:
    #'click': 'showEntry'
    'click .js-destroy': 'destroyTask'
    'click .js-show-form': 'showTaskForm'
    #'click .js-update': 'updateTask'
    'submit .edit-task': 'updateTask'

  initialize: ->
    @model.on('change', @render, this)
    # @model.on('highlight', @highlightWinner, this)

  showEntry: ->
    console.log 'click event'
    # Backbone.history.navigate("entries/#{@model.get('id')}", true)

  showTaskForm: ->
    $tr = $(@.el)
    $tr.find('.showable').addClass 'hidden'
    $tr.find('.editable').removeClass 'hidden'


  updateTask: (event) ->
    event.preventDefault()
    attributes = Backbone.Syphon.serialize this
    @model.save attributes,
      wait: true
      success: (model, response) ->
        console.log response
      error: @handleError

  destroyTask: ->
    @model.destroy
      wait: true
      success: (model, response) =>
        @remove()
      error: @handleError


  # highlightWinner: ->
  #   $('.winner').removeClass('highlight')
  #   @$('.winner').addClass('highlight')

  render: ->
    $(@el).html(@template(task: @model))
    this

  handleError: (task, response) ->
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      window.showFlashMessage(errors, { type: 'danger' })