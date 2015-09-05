defmodule ElixirApi.Web do
  def controller do
    quote do
      use Phoenix.Controller

      import ElixirApi.Router.Helpers
      import ElixirApi.ControllerHelpers
    end
  end

  def view do
    quote do
      use Phoenix.View, root: "web/templates"

      import ElixirApi.Router.Helpers
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
