class MyApp.Show extends Spine.Controller
  constructor: ->
    super
	MyApp.Post.bind "show", (model) => @render model.id 
    
  render: (id) =>
    posts = MyApp.Post.last()
    @html JST["posts/views/show"](posts: posts)
