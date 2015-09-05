use Mix.Config

config :elixir_api, ElixirApi.Endpoint,
  http:   [port: 4001],
  server: false

config :logger, level: :warn

config :phoenix, :stacktrace_depth, 20
