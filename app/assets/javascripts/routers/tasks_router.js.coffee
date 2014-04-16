class TodoBb.Routers.Tasks extends Backbone.Router
  routes:
    '': 'index'
    'tasks/:id': 'show'

  initialize: ->
    @collection = new TodoBb.Collections.Tasks()
    @collection.reset($('#container').data('tasks'))

  index: ->
    view = new TodoBb.Views.TasksIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"