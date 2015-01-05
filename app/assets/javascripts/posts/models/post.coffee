class MyApp.Post extends Spine.Model
  @configure 'Post', 'title', 'start_time', 'content', 'estimated_time', 'end_time'
  @extend Spine.Model.Ajax
  
