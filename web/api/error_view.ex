defmodule ElixirApi.ErrorView do
  use ElixirApi.Web, :view

  def render("404.json", assigns) do
    %{
      error:  render("404.html", assigns),
      status: 404
    }
  end

  def render("404.html", _assigns) do
    "Page not found"
  end

  def render("500.json", assigns) do
    %{
      error:  render("500.html", assigns),
      status: 500
    }
  end

  def render("500.html", _assigns) do
    "Internal server error"
  end

  def template_not_found(_template, assigns) do
    render "500.html", assigns
  end
end
