defmodule FoobarWeb.PageController do
  use FoobarWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def fizzbuzz(conn, params) do
    # json(conn, %{message: "return foo, bar or foobar here"})

    case params do
      %{"foo" => "true", "bar" => "true"} ->
        json(conn, %{message: "foobar"})
      %{"foo" => "true"} ->
        json(conn, %{message: "foo"})
      %{"bar" => "true"} ->
        json(conn, %{message: "bar"})
      %{} ->
        json(conn, %{message: "woops"})
    end
  end
end
