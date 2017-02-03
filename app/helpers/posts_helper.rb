module PostsHelper
  def selected_category
    @category ? @category : @post.category
  end
end
