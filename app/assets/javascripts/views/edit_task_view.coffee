KapranovRubygarage.EditTaskView = Ember.TextField.extend
  didInsertElement: ->
    this.$().focus()

Ember.Handlebars.helper('edit-task', KapranovRubygarage.EditTaskView)
