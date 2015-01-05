class MyApp.Index extends Spine.Controller
  events:
    'click [data-type=delete]': 'delete'
    'click [data-type=new]': 'new'
    'click [data-type=start]': 'start'
    'click [data-type=done]': 'done'

  constructor: ->
    super
    MyApp.Post.bind 'refresh change', @render
    MyApp.Post.fetch()
    
  render: =>
    posts = MyApp.Post.all()
    console.log "*************"
    console.log posts
    window.pos = posts
    @html JST["posts/views/list"](posts: posts)
    $(".tabbable").html JST["posts/views/list"](posts: posts)

  show: (e) =>
  	new MyApp.Show

  new: =>
    console.log "New.."
    @append(new MyApp.New)

  delete: (e) =>
    console.log "Delete.."
    elementID = $(e.target).data('id')
    elementID or= $(e.target).parents('[data-id]').data('id')
    post = MyApp.Post.find(elementID)
    post.destroy()

  start: (e) =>
    console.log "Start.."
    elementID = $(e.target).data('id')
    elementID or= $(e.target).parents('[data-id]').data('id')
    post = MyApp.Post.find(elementID)
    post.start_time = new Date($.now())
    post.save()
  
  done: (e) =>
    console.log "Done.."
    elementID = $(e.target).data('id')
    elementID or= $(e.target).parents('[data-id]').data('id')
    post = MyApp.Post.find(elementID)
    post.end_time = new Date($.now())
    post.save()



