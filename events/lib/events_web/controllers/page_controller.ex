defmodule EventsWeb.PageController do
  use EventsWeb, :controller

  def index(conn, _params) do
    posts = Events.Posts.list_posts()
    render(conn, "index.html", posts: posts)
  end
end
