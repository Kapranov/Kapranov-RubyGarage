KapranovRubygarage.TasksRoute = Ember.Route.extend
  model: ->
    @store.find('task')

KapranovRubygarage.TasksIndexRoute = Ember.Route.extend
  model: ->
    @modelFor('tasks')

KapranovRubygarage.TasksActiveRoute = Ember.Route.extend
  model: ->
    @store.filter 'task', (task) ->
      !task.get('completed')

  renderTemplate: (controller) ->
    @render 'tasks/index', controller: controller

KapranovRubygarage.TasksCompletedRoute = Ember.Route.extend
  model: ->
    @store.filter 'task', (task) ->
      task.get('completed')

  renderTemplate: (controller) ->
    @render 'tasks/index', controller: controller
