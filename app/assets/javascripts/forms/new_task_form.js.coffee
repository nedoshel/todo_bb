
# $ ->
#   NewTask = Backbone.Model.extend
#     schema:
#       title:
#         type:      'Text'
#         validators: ['required']
#       task_at:
#         type:      'DateTime'
#         validators: ['required']
#       is_complete:
#         type:       'Checkbox'
#         options:    [ 'true', 'false' ]

#   TaskForm = Backbone.Form.extend
#     #template: _.template($("#formTemplate").html())
#     template: _.template(JST["forms/task"]())
#     events:
#       'submit form': 'submitAction'

#     submitAction: ->
#       console.log 'submit'
#   TaskFormView = new TaskForm(model: new NewTask()).render()

#   TaskFormView.on 'title:change', (form, titleEditor, extra) ->
#     console.log 'Title changed to ', titleEditor
#   TaskFormView.on 'submit', (form, titleEditor, extra, e) ->
#     console.log form
#     console.log titleEditor
#     console.log extra
#     e.preventDefault()


#   window.TaskFormView = TaskFormView
# # $("body").append(window.TaskFormView.el)