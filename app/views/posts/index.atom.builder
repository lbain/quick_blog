atom_feed do |feed|
  feed.title "Lucy Bain's Blog"
  feed.updated @posts.first.updated_at

  @posts.each do |post|
    feed.entry(post) do |entry|
      entry.title post.title
      entry.content post.body, :type => 'html'

      entry.author do |author|
        author.name 'Lucy Bain'
      end
    end
  end
end