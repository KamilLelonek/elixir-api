defmodule ElixirApi.Mixfile do
  use Mix.Project

  def project do
    [
      app:             :elixir_api,
      version:         "0.0.1",
      elixir:          "~> 1.0",
      elixirc_paths:   elixirc_paths(Mix.env),
      compilers:       [:phoenix] ++ Mix.compilers,
      build_embedded:  Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps
   ]
  end

  def application do
    [
      mod:          { ElixirApi, [] },
      applications: apps,
    ]
  end

  defp apps do
    ~w(phoenix phoenix_html cowboy logger)a
  end

  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  defp deps do
    [
      {:phoenix,             "~> 1.0.0"},
      {:phoenix_html,        "~> 2.1"},
      {:phoenix_live_reload, "~> 1.0", only: :dev},
      {:cowboy,              "~> 1.0"}
    ]
  end
end
