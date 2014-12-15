KapranovRubygarage.Router.map ()->
  @resource 'tasks', path: '/', ->
    @route('comment')
    @route('completed')
