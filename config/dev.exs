use Mix.Config

config :elixir_api, ElixirApi.Endpoint,
  http:                [port: 4000],
  debug_errors:        true,
  code_reloader:       true,
  cache_static_lookup: false,
  check_origin:        false,
  watchers:            []

config :elixir_api, ElixirApi.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ]

config :phoenix, :stacktrace_depth, 20
