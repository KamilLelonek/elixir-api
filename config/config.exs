use Mix.Config

config :elixir_api, ElixirApi.Endpoint,
  url:             [host: "localhost"],
  root:            Path.dirname(__DIR__),
  secret_key_base: "AnEXK855G+CwSCkYlrZ9Fy1KgYPYqQW2tJFgC09o4xZ0XamF+AIMRc9WANbTCh6R",
  render_errors:   [accepts: ~w(json)],
  pubsub: [
    name:    ElixirApi.PubSub,
    adapter: Phoenix.PubSub.PG2
  ]

config :logger, :console,
  format:   "$time $metadata[$level] $message\n",
  metadata: [:request_id]

import_config "#{Mix.env}.exs"
