defmodule ElixirApi.Tests.ApiControllerTest do
  use ElixirApi.ConnCase

  test "GET / should return current endpoints" do
    conn = get conn(), root_path(conn, :index)
    assert json_response(conn, 200) == %{
      "root" => "#{url(conn)}/",
    }
  end

  test "GET /whatever should return error page" do
    conn = get conn(), "/whatever"
    assert json_response(conn, :not_found) == %{"error" => "Page not found", "status" => 404}
  end
end
