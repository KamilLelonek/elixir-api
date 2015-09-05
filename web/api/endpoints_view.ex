defmodule ElixirApi.EndpointsView do
  use ElixirApi.Web, :view

  def render("index.json", %{conn: conn}) do
    for route <- ElixirApi.Router.__routes__,
      get?(route),
      into: %{},
      do: format_route(route, conn)
  end

  defp get?(%{verb: verb}), do: verb == :get

  defp format_route(%{helper: name, path: path}, conn),
    do: {name, url(conn) <> path(conn, path)}
end
