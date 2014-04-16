window.TodoBb =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new TodoBb.Routers.Tasks()
    Backbone.history.start(pushState: true)

$(document).ready ->
  TodoBb.initialize()

