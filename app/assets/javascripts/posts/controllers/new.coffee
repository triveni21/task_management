class MyApp.New extends Spine.Controller
  events:
    'submit form': 'submit'

  constructor: ->
    super
    console.log ("Her,,,")
    @render()
    
  render: =>
    console.log "In rendere..."
    @html JST["posts/views/new"]

  submit: (e) ->
    e.preventDefault()
    post = MyApp.Post.create({
      title: e.target.title.value,
      estimated_time: e.target.estimated_time.value,
      content: e.target.content.value
    });
