KapranovRubygarage.TasksController = Ember.ArrayController.extend
  actions: 
    createTask: ->
      comment = @get 'newComment'
      return unless comment.trim()

      task = @store.createRecord 'task',
        comment: comment
        completed: false

      @set 'newComment', ''
      task.save()

    clearCompleted: ->
      completed = @filterProperty 'completed', true
      completed.invoke 'deleteRecord'
      completed.invoke 'save'

  hasCompleted: (-> @get('completed') > 0 ).property('completed')

  completed: (->
    @filterProperty('completed', true).get 'length'
  ).property('@each.completed')

  remaining: (-> @filterProperty('completed', false).get('length')).property('@each.completed')

  inflection: (-> 
    remaining = @get('remaining')
    if remaining is 1 then 'item' else 'items'
  ).property('remaining')

  allAreDone: ((key, value) -> 
    if value is undefined
      !!@get('length') && @everyProperty('completed', true)
    else
      @setEach 'completed', value
      @invoke 'save'
      value
  ).property('@each.completed')
