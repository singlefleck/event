defmodule EventWeb.PageController do
  use EventWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
