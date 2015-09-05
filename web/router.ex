defmodule ElixirApi.Router do
  use Phoenix.Router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ElixirApi do
    pipe_through :api

    get "/", ApiController, :index, as: :root
  end
end
