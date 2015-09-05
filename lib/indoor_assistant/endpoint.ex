defmodule ElixirApi.Endpoint do
  use Phoenix.Endpoint, otp_app: :elixir_api

  socket "/socket", ElixirApi.UserSocket

  if code_reloading? do
    socket "/phoenix/live_reload/socket", Phoenix.LiveReloader.Socket
    plug Phoenix.LiveReloader
    plug Phoenix.CodeReloader
  end

  plug Plug.RequestId
  plug Plug.Logger

  plug Plug.Parsers,
    parsers:      [:urlencoded, :multipart, :json],
    pass:         ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head
  plug ElixirApi.Router
end
