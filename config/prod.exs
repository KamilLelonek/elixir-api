use Mix.Config

config :elixir_api, ElixirApi.Endpoint,
  http:                  [port: {:system, "PORT"}],
  url:                   [host: "elixir-api.herokuapp.com", port: 80],
  cache_static_manifest: "priv/static/manifest.json",
  secret_key_base:       System.get_env("SECRET_KEY_BASE")

config :logger, level: :info
