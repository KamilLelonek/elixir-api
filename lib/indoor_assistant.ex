defmodule ElixirApi do
  use Application

  import Supervisor.Spec, warn: false

  def  start(_type, _args), do: Supervisor.start_link(children, opts)
  defp opts,                do: [strategy: :one_for_one, name: ElixirApi.Supervisor]
  defp children,            do: [supervisor(ElixirApi.Endpoint, [])]

  def config_change(changed, _new, removed) do
    ElixirApi.Endpoint.config_change(changed, removed)
    :ok
  end
end
