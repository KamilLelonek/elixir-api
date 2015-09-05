defmodule ElixirApi.ApiController do
  use ElixirApi.Web, :controller

  def index(conn, _params) do
    render(conn, ElixirApi.EndpointsView, "index.json")
  end
end
