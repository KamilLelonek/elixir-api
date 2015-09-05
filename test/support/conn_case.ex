defmodule ElixirApi.ConnCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use Phoenix.ConnTest

      import ElixirApi.Router.Helpers

      @endpoint ElixirApi.Endpoint
    end
  end

  setup tags do
    :ok
  end
end
