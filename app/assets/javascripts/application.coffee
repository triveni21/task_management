#= require jquery
#= require jquery_ujs
#= require spine/spine
#= require spine/manager
#= require spine/route
#= require spine/local
#= require spine/ajax
#= require_self
#= require_tree ./posts/models
#= require_tree ./posts/controllers
#= require_tree ./posts/views
#= require modernizr
#= require bootstrap.min
#= require supersized.3.2.7.min
#= require waypoints
#= require waypoints-sticky
#= require jquery.isotope
#= require jquery.fancybox.pack
#= require jquery.fancybox-media
#= require plugins
#= require main
#= require_tree .

class MyApp extends Spine.Controller

  constructor: ->
    super
    @append(new MyApp.Index)

window.MyApp = MyApp

