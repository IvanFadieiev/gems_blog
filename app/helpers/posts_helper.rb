module PostsHelper
  def selected_category
    @category ? @category : @post.category
  end

  def check_link(link)
    if link.include?('http://') || link.include?('https://')
      link
    else
      'http://' + link
    end
  end
end
