KapranovRubygarage.TaskController = Ember.ObjectController.extend
  actions:
    editTask: ->
      @set 'isEditing', true

    acceptChanges: ->
      @set 'isEditing', false
      @get('model').save()

    removeTask: ->
      task = @get('model')
      task.deleteRecord()
      task.save()

  isEditing: false

  isCompleted: ((key, value) ->
    model = @get('model')

    if value is undefined
      model.get 'completed'
    else
      model.set 'completed', value
      model.save()
      value
  ).property("model.completed")
