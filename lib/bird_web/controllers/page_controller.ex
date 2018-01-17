defmodule BirdWeb.PageController do
  use BirdWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
