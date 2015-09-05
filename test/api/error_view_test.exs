defmodule ElixirApi.Tests.ErrorViewTest  do
  use ElixirApi.ConnCase, async: true

  import Phoenix.View

  test "renders 404.html" do
    assert render(ElixirApi.ErrorView, "404.html", []) ==
           "Page not found"
  end

  test "render 500.html" do
    assert render(ElixirApi.ErrorView, "500.html", []) ==
           "Internal server error"
  end

  test "renders 404.json" do
    assert render(ElixirApi.ErrorView, "404.json", []) ==
           %{
             error:  "Page not found",
             status: 404
           }
  end

  test "render 500.json" do
    assert render(ElixirApi.ErrorView, "500.json", []) ==
           %{
             error:  "Internal server error",
             status: 500
           }
  end

  test "render any error" do
    assert render(ElixirApi.ErrorView, "505.html", []) ==
           "Internal server error"
    assert render(ElixirApi.ErrorView, "505.json", []) ==
           "Internal server error"
  end
end
