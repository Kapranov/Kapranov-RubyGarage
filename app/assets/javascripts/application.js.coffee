#= require jquery
#= require jquery_ujs
#= require twitter/bootstrap
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require kapranov_rubygarage

window.KapranovRubygarage = Ember.Application.create({
  rootElement: '#ember-app'
})

KapranovRubygarage.ApplicationAdapter = DS.RESTAdapter

#= require_tree .
