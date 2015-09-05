defmodule ElixirApi.ControllerHelpers do
  import Plug.Conn
  import Phoenix.Controller, only: [json: 2]

  def forbidden(conn, message \\ :forbidden) do
    json_http_error(conn, :forbidden, message)
  end

  def unauthorized(conn, message \\ :unauthorized) do
    json_http_error(conn, :unauthorized, message)
  end

  defp json_http_error(conn, status, message) do
    conn
    |> put_status(status)
    |> json(%{error: message})
    |> halt
  end
end
